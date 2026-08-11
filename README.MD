# Projeto Aponti Academy - Análise e Preparação de Dados 🚦📊🎓

Este repositório reúne as atividades desenvolvidas ao longo das **Unidades 1 a 5**, cada uma com foco em diferentes aspectos da análise de dados, preparação de bases e documentação.  
O objetivo é aplicar conceitos de **Excel, SQL e Python** em bases reais (PRF Datatran 2025 e dados acadêmicos), consolidando práticas de análise, modelagem e boas práticas de projeto.

---

## 📂 Estrutura das Unidades

### [Unidade 1](ca://s?q=README_Unidade_1)
- Tema: **Análise inicial de acidentes PRF 2025 em Excel**.  
- Técnicas: fórmulas (`AVERAGEIF`, `PROCV`), gráficos comparativos.  
- Entregas: planilha com cálculos de severidade, sobreviventes e rodovias críticas.  

### [Unidade 2](ca://s?q=README_Unidade_2)
- Tema: **Análise avançada com tabelas dinâmicas e dashboards**.  
- Técnicas: PivotTables, gráficos elaborados, checklist de entrega, dicionário resumido.  
- Entregas: dashboards mensais, municipais e nacionais; observações detalhadas sobre achados e limitações.  

### [Unidade 3](ca://s?q=README_Unidade_3)
- Tema: **Missão Escola Tech - Banco de dados acadêmico**.  
- Técnicas: manipulação de CSV, correções de cadastro, consultas SQL (SELECT, UPDATE, INSERT, DELETE).  
- Entregas: bases de alunos e disciplinas corrigidas, relatório final em PDF, estatísticas de aprovados e média geral.  

### [Unidade 4](ca://s?q=README_Unidade_4)
- Tema: **Análise dos Acidentes Rodoviários Federais - Datatran 2025 (SQLite)**.  
- Técnicas: criação de views (`vw_acidentes_base`, `vw_indicadores_mensais`, `vw_indicadores_uf_br`), consultas avançadas, cálculo de efeito *Lift*.  
- Entregas: indicadores por mês, UF, BR, tipo de pista, fase do dia, clima e causas.  

### [Unidade 5](ca://s?q=README_Unidade_5)
- Tema: **Preparação de Dados com Python (pandas, numpy, matplotlib)**.  
- Técnicas: padronização de colunas, tratamento de nulos e duplicidades, criação de variáveis derivadas (`acidente_fatal`, `total_vitimas`, `indice_gravidade`), prevenção de data leakage.  
- Entregas:  
  - **Base Analítica** → para EDA e dashboards.  
  - **Base Modelável** → para modelagem explicável.  
  - **Dicionário de Variáveis** e **Decisões de Tratamento** documentados.  

---

## 📝 Observações Gerais
- O projeto evolui de análises simples em Excel até preparação robusta em Python e SQL.  
- Cada unidade reforça boas práticas: padronização, documentação, prevenção de erros e clareza metodológica.  
- O foco está em **transformar dados brutos em informação confiável**, pronta para análise exploratória, dashboards e modelagem.  

---

## 📈 Linha do Tempo da Jornada

```mermaid
graph TD
U1[Unidade 1 - Excel básico] --> U2[Unidade 2 - Excel avançado]
U2 --> U3[Unidade 3 - Banco de dados SQL]
U3 --> U4[Unidade 4 - SQLite e indicadores]
U4 --> U5[Unidade 5 - Python e preparação de dados]
