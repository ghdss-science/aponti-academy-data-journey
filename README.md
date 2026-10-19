# 🚦📊 Projeto Aponti Academy – Análise, Preparação e Exploração de Dados

Este repositório reúne as atividades desenvolvidas ao longo das **Unidades 1 a 7** do programa **Aponti Academy**, abrangendo desde análises iniciais em Excel até preparação de dados, modelagem analítica, construção de diagnósticos baseados em evidências e dashboards interativos em Power BI sobre modelo dimensional (Star Schema).

O projeto utiliza bases reais, com destaque para os dados de acidentes rodoviários da **Polícia Rodoviária Federal (PRF) – Datatran 2025**, além de uma base histórica da **Premier League (1993-2025)**, permitindo a aplicação prática de conceitos de:

* 📊 Excel e Google Sheets
* 🗄️ SQL e SQLite
* 🐍 Python (Pandas, NumPy e Matplotlib)
* 📈 Estatística Descritiva
* 📋 Storytelling com Dados
* 🔍 Análise Exploratória de Dados (EDA)
* 📐 Planejamento Estratégico de Analytics
* ⭐ Modelagem Dimensional (Star Schema)
* 📊 Power BI e DAX
* 📚 Documentação e Boas Práticas Analíticas

---

# 🎯 Objetivo Geral

Transformar dados brutos em informações confiáveis e acionáveis por meio de processos de limpeza, organização, modelagem, análise, visualização e documentação, desenvolvendo competências fundamentais para projetos de Data Analytics e Ciência de Dados.

---

# 📂 Estrutura das Unidades

## 📘 Unidade 1 – Análise Inicial dos Acidentes PRF 2025

### Tema

Análise exploratória inicial da base de acidentes da PRF utilizando Excel.

### Principais Técnicas

* Fórmulas avançadas (`AVERAGEIF`, `PROCV`, entre outras)
* Cálculo de indicadores
* Criação de gráficos comparativos
* Consolidação de dados

### Entregas

* Planilha analítica
* Indicadores de severidade
* Quantidade de sobreviventes
* Identificação de rodovias críticas

---

## 📘 Unidade 2 – Dashboards e Tabelas Dinâmicas

### Tema

Construção de análises visuais e dashboards gerenciais.

### Principais Técnicas

* Pivot Tables
* Gráficos dinâmicos
* Segmentação de dados
* Organização de dashboards

### Entregas

* Dashboard nacional
* Dashboard por município
* Dashboard temporal
* Dicionário resumido da base
* Checklist de qualidade

---

## 📘 Unidade 3 – Missão Escola Tech

### Tema

Modelagem e manipulação de dados acadêmicos utilizando SQL.

### Principais Técnicas

* Importação e tratamento de CSV
* Consultas SQL
* Correção de inconsistências cadastrais
* Operações CRUD

### Comandos Utilizados

```sql
SELECT
INSERT
UPDATE
DELETE
```

### Entregas

* Base acadêmica corrigida
* Relatório em PDF
* Estatísticas de desempenho
* Indicadores de aprovação

---

## 📘 Unidade 4 – Análise dos Acidentes Rodoviários Federais (SQLite)

### Tema

Construção de indicadores analíticos utilizando SQLite.

### Principais Técnicas

* Criação de Views
* Consultas analíticas
* Indicadores de desempenho
* Cálculo de Lift

### Views Desenvolvidas

* `vw_acidentes_base`
* `vw_indicadores_mensais`
* `vw_indicadores_uf_br`

### Entregas

* Indicadores por UF
* Indicadores por BR
* Indicadores por clima
* Indicadores por fase do dia
* Indicadores por tipo de pista
* Indicadores por causa do acidente

---

## 📘 Unidade 5 – Preparação de Dados com Python

### Tema

Construção de bases analíticas e modeláveis para projetos de análise de dados.

### Principais Tecnologias

* Pandas
* NumPy
* Matplotlib

### Técnicas Aplicadas

* Padronização de colunas
* Tratamento de valores nulos
* Remoção de duplicidades
* Criação de atributos derivados
* Controle de Data Leakage

### Variáveis Derivadas

* `acidente_fatal`
* `total_vitimas`
* `indice_gravidade`

### Entregas

#### Base Analítica

Preparada para análises exploratórias e construção de dashboards.

#### Base Modelável

Preparada para algoritmos de Machine Learning e análises preditivas.

#### Documentação

* Dicionário de Variáveis
* Registro das decisões de tratamento
* Relatório metodológico

---

## 📘 Unidade 5.1 – Diagnóstico dos Acidentes Fatais nas Rodovias Federais

### Tema

Investigação dos fatores associados aos acidentes fatais registrados pela PRF em 2025.

### Ferramentas

* Excel
* Google Sheets
* Data Analytics Canvas
* PowerPoint
* Gamma

### Técnicas Aplicadas

* Construção de KPIs
* Cruzamentos dimensionais
* Storytelling com dados
* Formulação e validação de hipóteses

### Dimensões Analisadas

* Unidade Federativa (UF)
* Rodovia (BR)
* Tipo de pista
* Causa do acidente
* Fase do dia
* Condição meteorológica

### Entregas

* Canvas de Hipóteses
* Apresentação Executiva
* Storytelling Analítico
* README metodológico

### Objetivo

Transformar dados operacionais em diagnósticos estratégicos capazes de apoiar ações preventivas e tomadas de decisão.

---

## 📘 Unidade 5.2 – Frequências, Rankings e Análises Bivariadas

### Tema

Análise estatística exploratória da base Datatran 2025 com foco na identificação de padrões de ocorrência, fatores de risco e características associadas à fatalidade dos acidentes.

### Principais Técnicas

* Tabelas de frequência absoluta e relativa
* Rankings de categorias
* Séries temporais simples
* Análises bivariadas
* Cruzamento de variáveis
* Identificação de combinações críticas de fatores

### Indicadores Avaliados

* Municípios com maior número de acidentes
* Principais causas dos acidentes
* Tipos de acidente
* Classificação das ocorrências
* Tipo de pista
* Traçado da via
* Uso do solo
* Condições meteorológicas
* Evolução mensal dos indicadores

### Análises de Fatalidade

Foram investigadas variáveis associadas ao aumento do risco de morte:

* Estados com maiores taxas de fatalidade
* Causas mais críticas
* Tipos de acidente mais letais
* Impacto das condições meteorológicas
* Influência do uso do solo
* Combinações de fatores de alto risco

### Principais Descobertas

* Colisões traseiras foram as ocorrências mais frequentes.
* Atropelamentos de pedestres e colisões frontais apresentaram as maiores taxas de fatalidade.
* Maranhão e Pará registraram índices de mortalidade significativamente superiores à média nacional.
* Acidentes em áreas não urbanas mostraram maior severidade.
* Condições de baixa visibilidade aumentaram o risco de fatalidade.

### Entregas

* Relatório Estatístico
* Tabelas de Frequência
* Rankings Analíticos
* Cruzamentos Bivariados
* Relatório Interpretativo em Markdown

---

## 📘 Unidade 5.3 – Relatório Analítico de EDA (Documento Final)

### Tema

Consolidação de todas as análises anteriores (Unidades 3, 4, 5, 5.1 e 5.2) em um **relatório analítico formal**, seguindo um roteiro estruturado de Análise Exploratória de Dados (EDA) fornecido pelo professor, com foco nos acidentes fatais registrados pela PRF em 2025.

### Ferramentas

* Python (Pandas, NumPy, Matplotlib, Seaborn)
* Node.js (biblioteca `docx`) para geração do documento Word
* Microsoft Word (.docx) / PDF

### Técnicas Aplicadas

* Recálculo de indicadores diretamente sobre a base analítica tratada (`base_analitica_prf_2025.csv`, 72.529 registros)
* Construção de rankings por causa, UF e tipo de pista
* Séries temporais (mensal e por dia da semana)
* Análises bivariadas com a variável-alvo `acidente_fatal`
* Cruzamento de dois e três fatores (tipo de pista × fase do dia; causa × tipo de pista)
* Matriz de correlação de Pearson entre variáveis numéricas e o alvo
* Formulação estruturada de achados no formato Achado → Evidência → Comparação → Hipótese → Limitação

### Estrutura do Relatório

1. Sumário executivo
2. Estatística descritiva e indicadores globais
3. Rankings (causa, UF, tipo de pista)
4. Séries temporais (mensal e dia da semana)
5. Análise bivariada (causa, clima, turno, tipo de pista, fim de semana)
6. Combinações de fatores e correlação
7. Síntese, hipóteses e limitações
8. Interpretação detalhada achado por achado (EXTRA)

### Principais Descobertas

* Pistas simples concentram quase metade dos acidentes e têm letalidade quase 2x maior que pistas duplas (9,86% vs. 4,88%).
* Maranhão e Pará têm taxas de letalidade 2 a 3x acima da média nacional, mesmo com volume moderado de registros.
* Madrugada (12,10%) e fins de semana (8,56%) são os recortes temporais mais letais.
* Causas raras como "suicídio (presumido)" e atropelamentos de pedestres concentram as maiores taxas de letalidade da base.
* `mortos` e `índice_gravidade` têm alta correlação com o alvo por definição (não por causalidade), reforçando a importância de distinguir redundância de descoberta.

### Entregas

* Relatório Analítico completo em Word (.docx)
* Relatório Analítico em PDF
* Gráficos gerados em Python (rankings, séries temporais, composição por desfecho, heatmap, matriz de correlação)

---

## 📘 Unidade 6 – Planejamento Estratégico do Dashboard (Power BI)

📁 Pasta: `atv_unidade_6/`

### Tema

Planejamento, antes de abrir o Power BI, de um dashboard interativo sobre o diagnóstico dos acidentes fatais nas rodovias federais (PRF 2025), transformando o problema em perguntas analíticas visuais.

### Principais Técnicas

* Planejamento Estratégico de Analytics (9 blocos)
* Definição de perguntas analíticas conectadas à variável `acidente_fatal`
* Matriz de perguntas × página × indicador × filtro × visualização
* Definição de indicadores (% de acidentes fatais, taxa de letalidade por 100 acidentes, índice de gravidade)
* Identificação de riscos (volume × risco proporcional, correlação × causalidade)

### Contexto Analisado

* 72.529 acidentes em 2025
* 5.210 acidentes com ao menos uma vítima fatal (7,18%)
* 6.043 mortos

### Dashboard Planejado

Dashboard com **8 páginas temáticas**: Visão Geral, Acidentes Fatais, Análise Geográfica, Análise Temporal, Causas e Tipos, Fatores Associados, Cruzamentos com o Alvo e Segmentos Críticos.

### Entregas

* Planejamento Estratégico do Dashboard em Word (.docx)
* Planejamento Estratégico do Dashboard em PDF
* Matriz de 8 perguntas analíticas
* README da unidade

---

## 📘 Unidade 6.2 – Dashboard Premier League (1993-2025)

📁 Pasta: `atv_unidade_6_2/`

### Tema

Atividade Extra do Módulo 6: planejamento e construção de um painel interativo em Power BI sobre o desempenho dos clubes e a competitividade da Premier League em 32 temporadas (12.160 jogos).

### Ferramentas

* Power BI (visuais, segmentadores, botões de navegação e visual customizado Matrix)
* DAX (medidas)
* Python (modelo dimensional: 1 fato + 3 dimensões)
* Base `Premier_League.csv` (Kaggle)

### Principais Técnicas

* Planejamento Estratégico de Analytics
* Modelo dimensional (`fato_time_partida`, `dim_equipe`, `dim_temporada`, `dim_calendario`) e tabela `classificacao`
* Indicadores: pontos, aproveitamento %, saldo de gols, média de gols por jogo, % de vitórias em casa e margem do campeão

### Perguntas Respondidas

* Quem foi campeão de cada temporada?
* Quais clubes mais pontuaram na história?
* Como um clube evoluiu ao longo do tempo?
* Jogar em casa dá vantagem?
* Os jogos têm mais ou menos gols hoje?
* Quais clubes têm melhor ataque e defesa?
* O título ficou mais disputado?

### Entregas

* Dashboard Power BI (`.pbix`) com 7 páginas
* Planejamento Estratégico em PDF
* README da unidade

---

## 📘 Unidade 7 – Star Schema e Dashboard de Acidentes PRF 2025

📁 Pasta: `atv_unidade_7/`

### Tema

Construção de um modelo dimensional **Star Schema** a partir da base Datatran 2025 e de um dashboard em Power BI para apoiar a priorização de fiscalização e prevenção, com foco em reduzir mortes (letalidade).

### Ferramentas

* Python (geração das tabelas dimensionais)
* Power BI e DAX
* Microsoft Word (.docx) para o planejamento

### Modelo Star Schema

| Tabela | Linhas | Descrição |
| --- | --- | --- |
| `fato_acidentes` | 72.529 | 1 linha por acidente, com métricas de vítimas e veículos |
| `dim_calendario` | 365 | Datas de 2025 |
| `dim_hora` | 24 | Hora e período do dia |
| `dim_localizacao` | 2.482 | Região, UF, município e BR |
| `dim_acidente` | 1.498 | Causa, tipo e classificação |
| `dim_ambiente` | 383 | Fase do dia, sentido, clima, tipo de pista e uso do solo |
| `dim_tracado_via` | 605 | Traçado da via e características da pista |

### Principais Técnicas

* Modelagem dimensional com chaves substitutas (`sk_`)
* Validação de integridade referencial e conferência de totais com a origem
* Medidas DAX (`Total Acidentes`, `Total Mortos`, `Letalidade`, letalidade por traçado)
* Indicador de letalidade em **mortos por 100 acidentes** (8,3 em 2025)

### Indicadores

* 72.529 acidentes
* 6.043 mortos e 20.018 feridos graves
* 83.550 feridos

### Entregas

* Modelo Star Schema em 7 CSVs
* Dashboard Power BI (`.pbix`) com 6 páginas
* Planejamento Estratégico em Word (.docx)
* README da unidade

---

# 📝 Boas Práticas Aplicadas

Durante todas as etapas do projeto foram adotadas práticas recomendadas de análise de dados:

* Padronização de nomenclaturas
* Tratamento consistente de dados faltantes
* Controle de duplicidades
* Documentação das transformações
* Reprodutibilidade das análises
* Clareza metodológica
* Organização dos artefatos gerados
* Planejamento do dashboard antes da construção
* Validação de integridade referencial no modelo dimensional
* Distinção entre volume de ocorrências e risco proporcional

---

# 📈 Evolução da Jornada de Aprendizagem

```mermaid
graph TD

U1[📊 Unidade 1<br>Excel Básico] --> U2[📈 Unidade 2<br>Dashboards e Pivot Tables]

U2 --> U3[🗄️ Unidade 3<br>Banco de Dados SQL]

U3 --> U4[📊 Unidade 4<br>SQLite e Indicadores]

U4 --> U5[🐍 Unidade 5<br>Preparação de Dados]

U5 --> U51[🎯 Unidade 5.1<br>Diagnóstico e Storytelling]

U51 --> U52[📉 Unidade 5.2<br>Frequências e Análises Bivariadas]

U52 --> U53[📄 Unidade 5.3<br>Relatório Analítico Final]

U53 --> U6[📐 Unidade 6<br>Planejamento do Dashboard]

U6 --> U62[⚽ Unidade 6.2<br>Dashboard Premier League]

U62 --> U7[⭐ Unidade 7<br>Star Schema e Dashboard PRF]
```

---

# 🏆 Resultado Final

Ao final do projeto, foi construída uma jornada completa de análise de dados, passando por coleta, limpeza, transformação, modelagem, exploração, interpretação, visualização e comunicação dos resultados.

O conjunto das unidades representa um fluxo próximo ao encontrado em projetos reais de Data Analytics, do dado bruto ao dashboard interativo sobre modelo dimensional, permitindo consolidar competências técnicas e analíticas essenciais para atuação profissional na área de dados.