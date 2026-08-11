# Unidade 4 - Análise dos Acidentes Rodoviários Federais 🚦📊

Este projeto da **Aponti Academy** consiste em uma análise detalhada dos acidentes rodoviários federais de 2025 (base Datatran/PRF), utilizando **SQLite** para consultas, criação de views e geração de indicadores.  
O objetivo foi explorar padrões de letalidade, causas, condições e distribuições temporais e geográficas.

---

## 📂 Estrutura do Projeto
- **acidentes_por_mes.csv** → Evolução mensal dos acidentes.  
- **acidentes_por_fase_dia.csv** → Distribuição por amanhecer, dia, anoitecer e noite.  
- **acidentes_por_clima.csv** → Impacto das condições meteorológicas.  
- **acidentes_por_tipo.csv** → Comparação por tipo de pista (simples, dupla, múltipla).  
- **acidentes_por_causa.csv** → Principais causas e taxas de letalidade.  
- **acidentes_por_br.csv** → Rodovias mais críticas em número de mortos.  
- **acidentes_por_uf.csv** → Distribuição por estados (UF).  
- **tipos_acidentes_por_bivariadas.csv** → Relação entre tipo de acidente e % fatais.  
- **efeito_lift_tipo_acidente.csv** → Cálculo do efeito *Lift* para gravidade relativa.  
- **combinacao_dois_fatores_fase_por_dia.csv** → Interação entre tipo de pista e fase do dia.  
- **vw_indicadores_mensais.csv** → View consolidada de indicadores mensais.  
- **vw_indicadores_uf_br.csv** → View consolidada por UF e BR.  
- **script.sql** → Consultas SQL para criação de views e relatórios.

---

## 🔧 Consultas SQL Implementadas
- **[Estrutura da tabela](ca://s?q=SQL_estrutura_da_tabela)**: `PRAGMA table_info(datatran2025);`  
- **[Métricas gerais](ca://s?q=SQL_métricas_gerais)**: total de acidentes, fatais e % de letalidade.  
- **[Por Estado](ca://s?q=SQL_acidentes_por_estado)**: agregação por UF com taxa de letalidade.  
- **[Rodovias críticas](ca://s?q=SQL_acidentes_por_rodovias)**: top 30 BRs em número de mortos.  
- **[Evolução temporal](ca://s?q=SQL_evolução_temporal)**: agrupamento por ano e mês.  
- **[Tipos de acidente](ca://s?q=SQL_tipos_de_acidente)**: % de ocorrências fatais por tipo.  
- **[Causas](ca://s?q=SQL_causas_de_acidentes)**: 30 principais causas ordenadas por letalidade.  
- **[Fase do dia](ca://s?q=SQL_fase_do_dia)**: comparação entre amanhecer, dia, anoitecer e noite.  
- **[Clima](ca://s?q=SQL_condições_meteorológicas)**: impacto das condições meteorológicas.  
- **[Tipo de pista](ca://s?q=SQL_tipo_de_pista)**: comparação entre pistas simples, dupla e múltipla.  
- **[Combinação de fatores](ca://s?q=SQL_combinação_de_fatores)**: pista + fase do dia.  
- **[Efeito Lift](ca://s?q=SQL_efeito_lift)**: razão entre taxa de letalidade do tipo e taxa média geral.  
- **[Views](ca://s?q=SQL_criação_de_views)**:  
  - `vw_indicadores_mensais` → indicadores mensais.  
  - `vw_indicadores_uf_br` → consolidação por UF e BR.  

---

## 📊 Principais Evidências
- **Mensalidade**: dezembro (6.788 acidentes) e agosto (6.246) foram os meses mais críticos.  
- **Fase do dia**: maior letalidade no amanhecer (11,2%) e plena noite (10,18%).  
- **Clima**: nevoeiro/neblina (10,85%) e condições ignoradas (9,9%) tiveram maior % de fatais.  
- **Tipo de pista**: pistas simples concentram maior letalidade (9,86%).  
- **Causas**: suicídio presumido (55%), pedestre na pista (41%) e entrada inopinada (30%) são as mais letais.  
- **Tipos de acidente**: atropelamento de pedestre (29,5%) e colisão frontal (29,4%) lideram em gravidade.  
- **Rodovias**: BR-101 (760 mortos) e BR-116 (708) são as mais críticas.  
- **Estados**: Maranhão (18%), Pará (17%) e Roraima (16%) apresentam maiores taxas de letalidade.  

---

## 📝 Observações
- A análise mostra que **fatores humanos** (suicídio, pedestres, contramão, racha) concentram as maiores taxas de letalidade.  
- **Infraestrutura viária** (pistas simples, falta de acostamento, iluminação deficiente) também contribui para maior gravidade.  
- **Condições climáticas adversas** aumentam o risco relativo, mas a maioria dos acidentes ocorre em céu claro.  
- **Rodovias federais específicas** concentram grande parte das mortes, sugerindo pontos críticos de atenção.  
- Questões futuras:  
  - Como reduzir atropelamentos e colisões frontais?  
  - Quais políticas podem diminuir a letalidade em estados críticos como MA e PA?  
  - Como relacionar infraestrutura e fiscalização com os índices de cada BR?  

---

## 🛠️ Habilidades Técnicas
- Manipulação de dados em **SQLite**.  
- Criação de **views** para indicadores mensais e regionais.  
- Consultas avançadas com **agrupamentos, filtros e cálculos estatísticos**.  
- Uso de métricas como **percentual de fatais** e **efeito Lift**.  
- Consolidação de resultados em **CSV** para análise externa.  

---

## 📜 Licença
Este projeto é de caráter acadêmico e segue a licença MIT.
