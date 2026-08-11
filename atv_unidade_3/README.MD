# Unidade 3 - Missão Escola Tech 🎓💻

Este projeto da **Aponti Academy** consistiu em manipulação e análise de dados acadêmicos utilizando **SQLite**, arquivos CSV e relatórios em PDF.  
O objetivo foi corrigir inconsistências, atualizar cadastros e gerar estatísticas consolidadas sobre alunos e disciplinas.

---

## 📂 Estrutura do Projeto
- **alunos.csv** → Base inicial de alunos (id, nome, idade, turma, nota).  
- **relatorio_alunos.csv** → Dados detalhados com cidade e situação (aprovado, recuperação, reprovado).  
- **aprovados.csv** → Lista consolidada de alunos aprovados.  
- **disciplinas.csv** → Disciplinas com professor e carga horária.  
- **disciplinas_atualizadas.csv** → Disciplinas com inclusão de laboratório.  
- **EscolaTech.db** → Banco de dados SQLite com tabelas `alunos` e `disciplinas`.  
- **missao_escola_tech.sql** → Script SQL com consultas, correções e relatórios.  
- **relatorio_final.pdf** → Documento oficial com estatísticas e correções.  

---

## 🔧 Correções Realizadas
- Alteração da turma do aluno **Diego Alves**.  
- Correção das notas de **Felipe Melo** e **Ana Souza**.  
- Atualização da idade de **Ana Souza**.  
- Atualização do professor da disciplina **Programação Web**.  
- Inclusão de **5 novos alunos** (Ulisses, Savio Alves, Cristiane Melo, Yuri Cavalcanti, Talita Barbosa).  
- Remoção de registros inválidos e duplicados.  
- Inclusão das colunas **cidade** (alunos) e **laboratório** (disciplinas).  
- Atualização das cidades dos alunos e laboratórios das disciplinas.  

---

## 📊 Estatísticas
- **Quantidade de alunos importados**: 40  
- **Quantidade de aprovados**: 30  
- **Média geral das notas**: 7.59  
- **Turma com mais alunos**: Info B (12 estudantes)  

---

## 🗂️ Consultas SQL Implementadas
- **[Visualização de dados](ca://s?q=SQL_visualizar_dados)**:  
  - `SELECT * FROM alunos;`  
  - `SELECT nome, nota, turma FROM alunos;`  
  - `SELECT * FROM disciplinas;`  

- **[Correções de cadastro](ca://s?q=SQL_correções_de_cadastro)**:  
  - `UPDATE alunos SET turma = 'Info B' WHERE nome = 'Diego Alves';`  
  - `UPDATE alunos SET nota = 8.2 WHERE nome = 'Felipe Melo';`  
  - `UPDATE alunos SET nota = 9.7 WHERE nome = 'Ana Souza';`  
  - `UPDATE alunos SET idade = 20 WHERE nome = 'Ana Souza';`  
  - `UPDATE disciplinas SET professor = 'Fernanda Oliveira' WHERE disciplina = 'Programação Web';`  

- **[Novas matrículas](ca://s?q=SQL_inserir_novos_alunos)**:  
  - `INSERT INTO alunos(id, nome, idade, turma, nota) VALUES(...);`  

- **[Limpeza de dados](ca://s?q=SQL_limpeza_de_dados)**:  
  - `DELETE FROM alunos WHERE nome = 'Gustavo';`  
  - `ALTER TABLE alunos DROP COLUMN laboratorio;`  

- **[Relatórios](ca://s?q=SQL_relatórios_de_alunos)**:  
  - Situação automática (Aprovado, Recuperação, Reprovado) com `CASE`.  
  - Relatório completo de aprovados e reprovados.  
  - Conferência das correções realizadas.  
  - Impactos das alterações no desempenho.  

---

## ⚠️ Cuidados com SQL
Durante a atividade foram discutidos cuidados ao usar comandos como **UPDATE, DELETE e DROP TABLE**:
- Sempre utilizar cláusula **WHERE** para evitar alterações indevidas.  
- Realizar **backup** antes de operações críticas.  
- Confirmar os registros afetados antes da execução.  
- O comando **DROP TABLE** remove toda a tabela e sua estrutura, devendo ser usado apenas quando não houver mais necessidade.  

---

## 📝 Observações
- A atividade reforçou a importância da **limpeza e padronização de dados** para evitar inconsistências.  
- A integração entre diferentes arquivos (alunos, aprovados, disciplinas) permitiu consolidar informações de forma confiável.  
- O relatório final trouxe uma visão clara sobre desempenho dos alunos e organização das disciplinas.  
- Questões futuras:  
  - Como melhorar a taxa de aprovação nas turmas com maior índice de recuperação/reprovação?  
  - Quais disciplinas concentram maior dificuldade dos alunos?  
  - Como relacionar desempenho com idade, cidade ou carga horária das disciplinas?  

---

## 🛠️ Habilidades Técnicas
- Manipulação de arquivos **CSV**.  
- Criação e manutenção de banco de dados **SQLite**.  
- Escrita e execução de **consultas SQL** (SELECT, UPDATE, INSERT, DELETE).  
- Consolidação de dados em relatórios.  
- Uso de **estatísticas descritivas** (média, contagem, proporções).  
- Documentação em **PDF**.  
- Boas práticas de **SQL** para manutenção de bancos de dados.  

---

## 📜 Licença
Este projeto é de caráter acadêmico e segue a licença MIT.
