# Unidade 5 - Preparação dos Dados PRF 2025 🐍📊

Este projeto da **Aponti Academy** consiste na preparação da base de dados da **PRF (Polícia Rodoviária Federal) - Datatran 2025** utilizando **Python (pandas, numpy, matplotlib)**.  
O objetivo foi limpar, padronizar e estruturar os dados para análises exploratórias (EDA), dashboards em Power BI e modelagem explicável (árvore de decisão).

---

## 📂 Estrutura do Projeto
- **acidentes2025.csv** → Base bruta de acidentes.  
- **base_analitica_prf_2025.csv** → Base tratada para análise e dashboards.  
- **base_modelavel_prf_2025.csv** → Base tratada para modelagem, sem data leakage.  
- **dicionario_variaveis_modulo4.csv** → Dicionário das variáveis criadas.  
- **decisoes_tratamento_modulo4.md** → Registro das decisões de tratamento.  
- **Roteiro_Modulo4_Python_Preparacao_Dados.pdf** → Roteiro da preparação em Python.  

---

## 🔧 Decisões de Tratamento
- Nomes de colunas padronizados (minúsculas, sem acentos, com underline).  
- Conversão de colunas numéricas com `pd.to_numeric(errors='coerce')`.  
- Conversão de datas com `pd.to_datetime(errors='coerce')`.  
- Categorias ausentes preenchidas como **IGNORADO**.  
- Variável-alvo: `acidente_fatal = 1` quando mortos ≥ 1; caso contrário, 0.  
- Base modelável exclui variáveis derivadas do desfecho (mortos, feridos, índice de gravidade).  

---

## 📊 Variáveis Criadas
- **[acidente_fatal](ca://s?q=Variável_acidente_fatal)** → 1 se mortos ≥ 1; 0 se mortos = 0.  
- **[total_vitimas](ca://s?q=Variável_total_vitimas)** → mortos + feridos leves + feridos graves.  
- **[indice_gravidade](ca://s?q=Variável_indice_gravidade)** → mortos*3 + feridos graves*2 + feridos leves.  
- **[br_formatada](ca://s?q=Variável_br_formatada)** → BR padronizada no formato BR-000.  
- **[chave_localidade](ca://s?q=Variável_chave_localidade)** → UF + município + BR formatada.  

---

## 🗂️ Bases Geradas
- **Base Analítica** → completa para EDA e Power BI, inclui indicadores de gravidade.  
- **Base Modelável** → usada em modelagem, apenas variáveis explicativas + alvo `acidente_fatal`.  
- **Dicionário de Variáveis** → documentação das novas variáveis criadas.  
- **Decisões de Tratamento** → arquivo com regras e justificativas metodológicas.  

---

## 📝 Observações Metodológicas
- **Data Leakage**: variáveis diretamente derivadas do desfecho (mortos, feridos, índice de gravidade) foram excluídas da base modelável.  
- **Tratamento de nulos**: categóricas preenchidas com **IGNORADO**; numéricas com 0 ou -1.  
- **Duplicidades**: registros duplicados foram removidos.  
- **Padronização textual**: colunas textuais foram convertidas para maiúsculas e espaços removidos.  
- **Variáveis temporais**: criadas colunas de ano, mês, trimestre, dia da semana e turno.  

---

## 📈 Resultados da Preparação
- **Linhas base analítica**: igual ao total de registros tratados.  
- **Linhas base modelável**: mesma dimensão, mas sem variáveis proibidas.  
- **Taxa global de acidente fatal**: calculada e validada.  
- **Ranking inicial**: causas e tipos de acidente mais frequentes.  
- **Taxa fatal por categoria**: proporção de fatais por tipo de acidente.  

---

## 🛠️ Habilidades Técnicas
- Manipulação de dados com **pandas** e **numpy**.  
- Criação de variáveis derivadas e indicadores de gravidade.  
- Tratamento de nulos, duplicidades e padronização de colunas.  
- Exportação de bases tratadas em **CSV**.  
- Documentação de decisões em **Markdown**.  
- Boas práticas de notebooks (execução sequencial, comentários, reprodutibilidade).  

---

## 📜 Licença
Este projeto é de caráter acadêmico e segue a licença MIT.
