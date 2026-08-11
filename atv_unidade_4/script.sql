/* 
	
    Escola Aponti Academy 
    Disciplina: Análise de dados (Banco de dados Sqlite)
    Aluno: Gustavo Henrique de Souza Silva 
    
    Projeto: Análise dos acidentes rodoviários Federais - Datatran 2025
*/

/* 2. Exibir a estrutura (colunas e tipos) da tabela importada 'acidentes_prf_2025' */
PRAGMA table_info(datatran2025);
 
-- 3. Contar o número total de registros/ocorrências da base 
SELECT count (*) from datatran2025;

-- 4. Excluir a view base se ela já existir no banco para evitar conflito */ 
DROP VIEW IF EXISTS vw_acidentes_base;

-- 5. Criar a view base com a flag 'acidente_fatal' (1 para mortos >= 1, senão 0) 
CREATE VIEW vw_acidentes_base AS 
SELECT
 	*, 
    CASE 
    	WHEN CAST(mortos AS INTEGER) >= 1 THEN 1
        ELSE 0
    END AS acidente_fatal
 FROM datatran2025;
 
 -- 6. Calcular métricas gerais: total de acidentes, total de fatais e o % de letalidade 
 SELECT 
     COUNT(*) AS total_acidentes, 
     SUM(acidente_fatal) AS acidentes_fatais, 
     ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais
 FROM vw_acidentes_base;
 
 -- 7. Agregar acidentes, mortos e % de fatais por Estado (UF), filtrando os com ao menos 100 casos
 SELECT 
 	  uf, 
      COUNT(*) as total_acidentes, 
      SUM(cast(mortos as INTEGER)) AS total_mortos, 
      SUM(acidente_fatal) AS acidentes_fatais, 
      ROUND(100 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
 FROM vw_acidentes_base 
 GROUP BY uf 
 HAVING COUNT(*) >= 100 
 ORDER BY perc_fatais DESC;
 
 -- 8. Listar as 30 rodovias (BRs) mais letais em número absoluto de mortos
 SELECT 
 	  br, 
      SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
      COUNT(*) AS total_acidentes
 FROM vw_acidentes_base 
 GROUP BY br 
 ORDER BY total_mortos DESC 
 LIMIT 30;
 
 -- 9. Agrupar a evolução temporal dos acidentes por Ano e Mês (extraídos da data) 
 SELECT 
 	  strftime('%Y', data_inversa) AS ano, 
      strftime('%m', data_inversa) as mes, 
      COUNT(*) as total_acidentes 
 FROM vw_acidentes_base 
 GROUP BY ano, mes
 ORDER by ano, mes;
 
 -- 10. Analisar a relação bivariada entre o Tipo de Acidente e o % de ocorrências fatais 
SELECT 
 	  tipo_acidente, 
      COUNT(*) as total_acidentes, 
      SUM(acidente_fatal) AS acidentes_fatais, 
      ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) as perc_fatais 
 FROM vw_acidentes_base
 GROUP BY tipo_acidente
 ORDER BY perc_fatais DESC;
 
 -- 11. Analisar as 30 Principais Causas de Acidentes ordenadas pela maior taxa de letalidade 
 SELECT 
 	  causa_acidente, 
      COUNT(*) as total_acidentes, 
      SUM(acidente_fatal) AS acidentes_fatais, 
      SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
      ROUND(100 * SUM(acidente_fatal) / COUNT(*), 2) as perc_fatais 
 FROM vw_acidentes_base 
 GROUP BY causa_acidente
 ORDER BY perc_fatais DESC 
 LIMIT 30;
 
-- 12. Comparar a gravidade dos acidentes de acordo com a Fase do Dia (noite, pleno dia, etc.) 
SELECT 
	  fase_dia, 
      COUNT(*) AS total_acidentes, 
      SUM(acidente_fatal) AS acidentes_fatais, 
      SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
      ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) as perc_fatais
FROM vw_acidentes_base 
GROUP BY fase_dia 
ORDER BY perc_fatais DESC; 

-- 13. Avaliar a influência da Condição Meteorológica no % de acidentes fatais
SELECT
 	 condicao_metereo, 
     COUNT(*) as total_acidentes, 
     SUM(acidente_fatal) AS acidentes_fatais,
     SUM(CAST(mortos AS INTEGER)) as total_mortos, 
     ROUND(100.0 * SUM (acidente_fatal) / COUNT(*), 2) as perc_fatais 
FROM vw_acidentes_base
GROUP BY condicao_metereo 
ORDER BY perc_fatais DESC;
     
-- 14. Comparar a letalidade do acidente de acordo com o Tipo de Pista (simples, dupla, múltipla) 
SELECT
	 tipo_pista, 
     COUNT(*) AS total_acidentes, 
     SUM(acidente_fatal) AS acidentes_fatais, 
     SUM(CAST (mortos as INTEGER)) AS total_mortos, 
     ROUND(100.0 * SUM (acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base 
GROUP BY tipo_pista
ORDER BY perc_fatais DESC;
	
-- 15. Analisar a combinação de dois fatores (Pista + Fase do Dia) e a cobertura em relação ao total 
SELECT 
 	tipo_pista, fase_dia,
    COUNT(*) as total_acidentes, 
    SUM(acidente_fatal) AS acidentes_fatais, 
    SUM(CAST (mortos AS INTEGER)) AS total_mortos, 
    ROUND(100.0 * SUM (acidente_fatal) / COUNT(*), 2) AS perc_fatais,
    ROUND(100.0 * COUNT() / (SELECT COUNT() FROM vw_acidentes_base), 2) AS cobertura_total
FROM vw_acidentes_base 
GROUP BY tipo_pista, fase_dia 
ORDER BY perc_fatais, cobertura_total  DESC;

-- 16.  Calcular o efeito 'Lift' (razão entre a taxa de letalidade do tipo e a taxa média geral)
WITH taxa_global AS (
	SELECT 
  		 1.0 * SUM(acidente_fatal) / COUNT(*) AS taxa 
    FROM vw_acidentes_base
)

SELECT 
	tipo_acidente, 
    COUNT(*) AS acidentes_fatais, 
    SUM(acidente_fatal) AS acidentes_fatais, 
    ROUND(100.0 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS cobertura_perc,
    ROUND(1.0 * SUM(acidente_fatal) / COUNT(*), 4) AS confianca, 
    ROUND((1.0 * SUM(acidente_fatal) / COUNT(*)) / taxa, 2) AS lift 
from vw_acidentes_base
CROSS JOIN taxa_global
GROUP BY tipo_acidente, taxa
HAVING COUNT(*) >= 100
ORDER BY lift DESC;

-- 17. Criar a view 'vw_indicadores_mensais' para facilitar relatórios temporais 
 
 -- Remove a view caso ela já exista 
 DROP VIEW IF EXISTS vw_indicadores_mensais
 
 -- Cria a view com os indicadores mensais
 CREATE VIEW vw_indicadores_mensais AS 
 SELECT 
 	 CAST(strftime('%Y', data_inversa) AS INTEGER) AS ano, 
     CAST(strftime('%m', data_inversa) AS INTEGER) AS mes, 
     COUNT(*) AS total_acidentes, 
     SUM(CAST(mortos AS INTEGER)) AS total_mortos, 
     SUM(acidente_fatal) AS acidentes_fatais, 
     ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base
GROUP BY ano, mes;

-- Exibe os dados da view 
SELECT * FROM vw_indicadores_mensais ORDER BY ano, mes; 

-- 18. Criar a view 'vw_indicadores_uf_br' consolidadas por localização para uso em Dashboards

DROP VIEW IF EXISTS vw_indicadores_uf_br; 

CREATE VIEW vw_indicadores_uf_br AS 
SELECT 
	 uf, 
     br, 
     COUNT(*) AS total_acidentes, 
     SUM(cast(mortos AS INTEGER)) AS total_mortos, 
     SUM(acidente_fatal) AS acidentes_fatais, 
     ROUND(100.0 * SUM(acidente_fatal) / COUNT(*), 2) AS perc_fatais 
FROM vw_acidentes_base 
WHERE br IS NOT NULL
GROUP BY uf, br;

SELECT * FROM vw_indicadores_uf_br ORDER BY total_mortos DESC;
