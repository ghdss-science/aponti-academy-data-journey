# Unidade 2 - Análise Avançada de Dados de Acidentes 🚦📊

Este projeto utiliza a base da **PRF (Polícia Rodoviária Federal) - Datatran 2025** para realizar uma análise avançada em **Excel**, com foco em **tabelas dinâmicas, dashboards, checklist de entrega e dicionário resumido**.  
O objetivo é explorar padrões de acidentes fatais e não fatais, causas predominantes e distribuição por estados, municípios e rodovias.

---

## 📂 Estrutura do Projeto
- **tabela_dinamica_mes_fatais_nfat** → Acidentes fatais e não fatais por mês.
- **tabela_dinamica_ac_fatais_nfata** → Comparação municipal de acidentes fatais e não fatais.
- **outra_analise_tabela_dinamica** → Distribuição por rodovias e causas.
- **gráficos** → Dashboards com visualizações comparativas.
- **checklist_entrega** → Registro das etapas cumpridas.
- **dicionario_resumido** → Documentação dos principais campos da base.

---

## ✅ Checklist de Entrega
- CSV importado e estruturado  
- Variável `acidente_fatal` criada  
- Tratamento de dados nulos e duplicados  
- **6+ tabelas dinâmicas** com perguntas analíticas  
- **4+ gráficos** com títulos claros  
- Observações registradas  
- Dicionário resumido documentado  

---

## 📊 Principais Evidências e Achados
- **Mensalidade**: 505 acidentes fatais (picos em agosto e dezembro); 4.704 não fatais (picos em maio e dezembro).  
- **Distribuição Municipal**: Brasília lidera em fatais (43) e não fatais (39); Curitiba e São José dos Pinhais também aparecem em destaque.  
- **Panorama Nacional**: Minas Gerais concentra 9.570 acidentes (13% do total).  
- **Classificação**: 77% dos acidentes têm vítimas feridas; 7% resultam em mortes; 15% não tiveram vítimas.  
- **Causas**: Predomínio de falhas humanas (reação tardia, ausência de atenção, velocidade e álcool).  
- **Condições Meteorológicas**: 60% dos acidentes ocorreram em céu claro.  
- **Fase do Dia**: 55% dos acidentes em pleno dia; 34% à noite.  
- **Rodovias Federais**: BRs 0, 1, 2 e 3 concentram quase metade das mortes.  
- **Tipos de Acidente**: Colisão frontal é o tipo mais letal (1.863 mortos).  
- **Distribuição Percentual por Estado**: MG lidera em quase todos os indicadores; SC e RJ têm menor letalidade relativa; BA apresenta alta mortalidade proporcional.

---

## 📝 Observações
### Análise Mensal
- **Evidências**: 505 fatais; 4.704 não fatais.  
- **Achado**: Sazonalidade em agosto/dezembro; não fatais quase 10x mais frequentes.  
- **Limitações**: Dados agregados sem detalhamento por estado ou causa.  
- **Próximas Perguntas**: Relação com feriados? Causas predominantes nos meses críticos?

### Distribuição Municipal
- **Evidências**: Brasília (43 fatais, 39 não fatais).  
- **Achado**: Brasília lidera em ambas categorias; São Paulo com maior proporção de fatais.  
- **Limitações**: Cobertura parcial, sem ajuste por população.  
- **Próximas Perguntas**: Relação entre frota e acidentes? Infraestrutura viária?

### Panorama Nacional
- **Evidências**: MG (9.570), SC (8.186), PR (7.630).  
- **Achado**: Sudeste e Sul concentram maiores números.  
- **Limitações**: Dados absolutos sem ajuste por frota/população.  
- **Próximas Perguntas**: Por que MG concentra tantos acidentes?

### Classificação dos Acidentes
- **Evidências**: 56.181 com feridos; 5.209 fatais.  
- **Achado**: Predomínio de acidentes com feridos (77%).  
- **Limitações**: Sem cruzamento com tempo ou clima.  
- **Próximas Perguntas**: Quais tipos geram mais vítimas fatais?

### Principais Causas
- **Evidências**: 64.457 registros.  
- **Achado**: Predomínio de falhas humanas; fatores externos em menor escala.  
- **Limitações**: Dados agregados sem detalhamento por estado.  
- **Próximas Perguntas**: Relação entre álcool e gravidade?

### Condições Meteorológicas
- **Evidências**: Céu claro (46.375), chuva (6.438).  
- **Achado**: Fator humano mais determinante que clima.  
- **Limitações**: Sem cruzamento com gravidade.  
- **Próximas Perguntas**: Acidentes em chuva têm maior taxa de mortalidade?

### Fase do Dia
- **Evidências**: Pleno dia (40.375), noite (24.781).  
- **Achado**: Maior fluxo diurno coincide com maior risco.  
- **Limitações**: Sem cruzamento com causas.  
- **Próximas Perguntas**: Relação entre luminosidade e tipos de acidente?

### Rodovias Federais
- **Evidências**: BR 2 (349 mortos), BR 3 (344).  
- **Achado**: Concentração em poucas rodovias críticas.  
- **Limitações**: Sem ajuste por extensão/fluxo.  
- **Próximas Perguntas**: Quais trechos concentram mais mortes?

### Tipos de Acidente
- **Evidências**: Colisão frontal (4.739 casos, 1.863 mortos).  
- **Achado**: Colisão frontal é a mais letal.  
- **Limitações**: Sem taxa de mortalidade relativa.  
- **Próximas Perguntas**: Como reduzir colisões frontais?

### Distribuição Percentual por Estado
- **Evidências**: MG (13,67% das pessoas envolvidas).  
- **Achado**: MG concentra volume e gravidade; SC e RJ com menor letalidade relativa.  
- **Limitações**: Dados percentuais agregados sem contexto socioeconômico.  
- **Próximas Perguntas**: Por que BA tem maior proporção de mortos?

---

## 🛠️ Habilidades Técnicas
- Criação e manipulação de **tabelas dinâmicas**.  
- Segmentação por variáveis (clima, fase do dia, tipo de acidente, rodovia).  
- Cálculo de percentuais para comparações regionais.  
- Padronização de títulos e categorias.  
- Construção de **dashboards comparativos**.  
- Uso de fórmulas (`MONTH`, `IF`) para automatizar classificações.  
- Integração entre Excel e Google Sheets.  

---

## 📜 Licença
Este projeto é de caráter acadêmico e segue a licença MIT.
