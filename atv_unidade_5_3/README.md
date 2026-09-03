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

⬅️ [Unidade 5.2 – Frequências, Rankings e Análises Bivariadas](../atv_unidade_5_2)
