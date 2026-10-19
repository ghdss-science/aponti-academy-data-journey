# ⚽📊 Unidade 6.2 – Dashboard Premier League (1993-2025) em Power BI

Atividade Extra do **Módulo 6 – Power BI e Dashboards Interativos** do programa **Aponti Academy**.

A atividade parte de um **planejamento estratégico** (9 blocos + matriz de perguntas analíticas) e chega a um **dashboard interativo em Power BI** sobre o desempenho dos clubes e a competitividade da Premier League em 32 temporadas.

> **Projeto:** Painel da Premier League (1993-2025)
> **Autor:** Gustavo Henrique de Souza Silva
> **Planejamento:** 01/10/2026 (prazo de entrega: 05/10/2026)
> **Formato:** Individual · uma folha de planejamento por projeto

---

## 📂 Conteúdo da Pasta

| Arquivo | Descrição |
| --- | --- |
| `Planejamento_dashboards.pdf` | Planejamento Estratégico de Analytics (4 páginas) |
| `dashboards_premier_league_originral.pbix` | Dashboard em Power BI com modelo de dados e 7 páginas |
| `README.md` | Este documento |

---

## 📌 Contexto e Problema

Os dados de **32 temporadas (12.160 jogos)** estão em formato de **uma linha por partida**, o que dificulta comparar clubes e enxergar campeões, evolução histórica e efeito do mando de campo.

* **Afetados:** torcedores e analistas esportivos.
* **Objetivo:** construir um painel interativo do desempenho dos clubes e da competitividade da liga (1993-94 a 2024-25).
* **Decisão apoiada:** quais clubes e temporadas comparar ao avaliar desempenho e equilíbrio da competição.
* **Escopo:** dashboard básico em Power BI.

---

## ❓ Perguntas Analíticas

| # | Pergunta |
| --- | --- |
| P1 | Quem foi campeão de cada temporada? |
| P2 | Quais clubes mais pontuaram na história? |
| P3 | Como um clube evoluiu ao longo do tempo? |
| P4 | Jogar em casa dá vantagem? |
| P5 | Os jogos têm mais ou menos gols hoje? |
| P6 | Quais clubes têm melhor ataque e defesa? |
| P7 | O título ficou mais disputado? |

---

## 🗃️ Dados

| Código | Fonte | Situação |
| --- | --- | --- |
| D1 | `Premier_League.csv` (Kaggle) | 12.160 jogos, tratada |
| D2 | Modelo dimensional em Python (1 fato + 3 dimensões) | Pronto |
| D3 | `classificacao.csv` | Pronto; temporadas 1993-95 incompletas |

### Modelo de Dados no Power BI

| Tabela | Tipo | Uso principal |
| --- | --- | --- |
| `fato_time_partida` | Fato | Pontos, vitórias casa/fora, gols, partidas |
| `dim_equipe` | Dimensão | Clubes, gols pró/contra por jogo |
| `dim_temporada` | Dimensão | Temporadas, % de jogos sem sofrer gols |
| `dim_calendario` | Dimensão | Filtro por data |
| `classificacao` | Tabela de apoio | Posição, pontos e equipe por temporada |

---

## 📊 Indicadores

| Código | Indicador | Cálculo |
| --- | --- | --- |
| I1 | Pontos | Soma de 3/1/0 por resultado |
| I2 | Aproveitamento % | Pontos ÷ (jogos × 3) |
| I3 | Saldo de gols | Gols pró − gols contra |
| I4 | Média de gols por jogo | Gols ÷ partidas |
| I5 | % de vitórias em casa | Vitórias ÷ jogos |
| I6 | Margem do campeão | Pontos do 1º − pontos do 2º |

---

## 🗺️ Matriz de Perguntas × Dashboard (Planejado)

| # | Página planejada | Indicador principal | Filtros | Visualização provável |
| --- | --- | --- | --- | --- |
| 1 | Visão geral | Pontos e posição final | Temporada | Tabela de classificação + cartões |
| 2 | Clubes | Pontos acumulados | Temporada, equipe | Barras horizontais (top 10) |
| 3 | Clubes | Pontos e aproveitamento % | Equipe, período | Linhas |
| 4 | Casa × Fora e gols | % de vitórias em casa × fora | Temporada, equipe | Colunas agrupadas |
| 5 | Casa × Fora e gols | Média de gols por jogo | Período | Linha |
| 6 | Clubes | Gols pró e contra por jogo | Temporada, equipe | Dispersão |
| 7 | Visão geral | Margem do campeão (1º − 2º) | Período | Linha |

---

## 📈 Dashboard Construído (`.pbix`)

O arquivo contém **7 páginas** com botões de navegação na capa:

| Página | Pergunta respondida | Visuais |
| --- | --- | --- |
| `Apresentação` | Capa | Título, créditos e botões de navegação para as demais páginas |
| `campeão_temporada` | P1 – Quem foi campeão de cada temporada? | Tabela (equipe, temporada, pontos) + segmentador de posição |
| `evolução_clubes` | P3 – Como um clube evoluiu ao longo do tempo? | Gráfico de linhas de pontos por temporada + segmentador de equipe |
| `pontuacao_vitorias_liga` | P2 – Quais clubes mais pontuaram na história? · P4 – Jogar em casa dá vantagem? | Gráfico de barras agrupadas de pontos por clube + tabela de vitórias em casa × fora |
| `jogos_melhor_ataque_defesa` | P5 – Os jogos têm mais ou menos gols hoje? · P6 – Quais clubes têm melhor ataque e defesa? | Gráfico de linhas (média de gols por jogo) + dispersão (gols pró × gols contra por jogo) |
| `disputa_outros_indicadores` | P7 – O título ficou mais disputado? | Matriz (campeão e média de gols por temporada), cartões (total de gols, clubes, jogos, % de empates, partidas, vitórias casa/fora, média de gols), KPIs (pontos do campeão × vice, partidas por total de gols, disputa do título, vitórias casa/fora por partidas) e segmentadores de data e equipe |
| `Indicadores` | Complementar | Saldo de gols por jogo por equipe (barras), % de jogos sem sofrer gols (treemap) e segmentadores de data, local (casa/fora) e temporada |

### Medidas DAX Identificadas no Relatório

`Pontos 1º` · `Pontos 2º` · `Campeão` · `Vitorias Casa` · `Vitorias Fora` · `Média de gols por jogo` · `Total de gols` · `Partidas` · `Jogos do time` · `Clubes` · `% Empates` · `Gols pró por jogo` · `Gols contra por jogo` · `Saldo de gols por jogo` · `% Jogos sem sofrer gols`

### Visual Customizado

* **Matrix** (Ataytis) na página `disputa_outros_indicadores`.

---

## ⚠️ Riscos e Premissas

* As temporadas **1993-94 e 1994-95 estão incompletas** (380 de 462 jogos), o que distorce a classificação.
* A base termina em **2024-25**; clubes com poucas temporadas limitam comparações.
* **Premissas:** vitória = 3 pontos; desempate por saldo de gols e gols pró.

---

## 👥 Público e Uso

* **Torcedores e analistas:** consulta exploratória do histórico dos clubes, para decidir quais clubes e temporadas merecem análise mais profunda.
* **Uso acadêmico:** avaliação da Atividade Extra 2.

---

## ✅ Próximos Passos (Cronograma do Planejamento)

| Etapa | Responsável | Prazo |
| --- | --- | --- |
| Importar CSVs e criar relações | Gustavo | 02/10 |
| Criar medidas DAX e páginas | Gustavo | 03/10 |
| Revisar e enviar | Gustavo | 04/10 (prazo final 05/10) |

---

## 📦 Entregas Previstas no Planejamento

* **E1:** painel interativo em Power BI (`.pbix`), previsto com 3 páginas (o arquivo final tem 7).
* **E2:** modelo dimensional em Python (5 CSVs).
* **E3:** planejamento (PEA) preenchido.

> 📝 **Observação:** os 5 CSVs do modelo dimensional e o `Premier_League.csv` original não fazem parte desta pasta; apenas o planejamento em PDF e o `.pbix` foram incluídos.

---

## 🔗 Relação com as Unidades Anteriores

```mermaid
graph LR
U6[📐 Unidade 6<br>Planejamento Dashboard PRF] --> U62[⚽ Unidade 6.2<br>Dashboard Premier League]
U62 --> PBI[📈 Power BI<br>7 páginas interativas]
```