/* Visualizar todos os alunos */
SELECT * FROM alunos; 

/* apenas os nomes dos alunos */ 
SELECT nome FROM alunos; 

/* notas dos estudantes */ 
SELECT nome, nota, turma FROM alunos; 

/* lista dos professores */
SELECT * FROM disciplinas;

/* Correção de Cadastro do Sistema */

/* Alterar turma de Diego Alves*/
UPDATE alunos SET turma = 'Info B' WHERE nome = 'Diego Alves'; 

/* Corrigir nota de Felipe Melo */
UPDATE alunos SET nota = 8.2 WHERE nome = 'Felipe Melo'; 

/* Corrigir nota de Ana Souza */
UPDATE alunos set nota = 9.7 WHERE nome = 'Ana Souza'; 

/* Atualizar idade de Ana Souza */ 
UPDATE alunos SET idade = 20 WHERE nome = 'Ana Souza'; 

/* Atualizar professor de Programação Web */ 
UPDATE disciplinas SET professor = 'Fernanda Oliveira' WHERE disciplina = 'Programação Web';

/* Novas Matriculas */
INSERT INTO alunos(id, nome, idade, turma, nota) VALUES(60, 'Ulisses', 50, 'Info A', 10.0);
INSERT INTO alunos(id, nome, idade, turma, nota) VALUES(61, 'Savio Alves', 18, 'Info B', 10.0);
INSERT INTO alunos(id, nome, idade, turma, nota) VALUES(62, 'Cristiane Melo', 22, 'Info A', 9.5);
INSERT INTO alunos(id, nome, idade, turma, nota) VALUES(69, 'Yuri Cavalcanti', 38, 'Info A', 8.6);
INSERT INTO alunos(id, nome, idade, turma, nota) VALUES(63, 'Talita Barbosa', 21, 'Info B', 7.0);

/* Limpeza do Banco de dados */ 
DELETE FROM alunos WHERE nome = 'Gustavo';
DELETE FROM alunos WHERE nome = 'Jéssica';
DELETE FROM alunos WHERE nome = 'Fabio';
DELETE FROM alunos WHERE nome = 'Augusto';
DELETE FROM alunos WHERE nome = 'Ronaldo Rozendo';
/* Apaguei os alunos que não possuia id */ 

/* Deletar a coluna laborátorio da tabela alunos */]
ALTER TABLE alunos DROP COLUMN laboratorio;

/* Consulta de duplicados */
SELECT id, COUNT(*) FROM alunos GROUP BY id HAVING COUNT(*) > 1;

/* Registrar a cidade dos alunos e o laboratório utilizado por cada disciplina */ 
ALTER TABLE alunos ADD COLUMN cidade VARCHAR(110);
ALTER TABLE disciplinas ADD COLUMN laboratorio VARCHAR(110);

/* Atualizando dados para a coluna laboratório na tabela disciplina */
UPDATE disciplinas SET Laboratorio = 'Laboratório A3' WHERE disciplina = 'Programação Web';    
UPDATE disciplinas SET Laboratorio = 'Laboratório A4' WHERE disciplina = 'Banco de Dados';
UPDATE disciplinas SET Laboratorio = 'Laboratório A4' WHERE disciplina = 'Empreendedorismo';
UPDATE disciplinas SET Laboratorio = 'Laboratório A5' WHERE disciplina = 'Projeto Integrador';
UPDATE disciplinas SET Laboratorio = 'Laboratório A6' WHERE disciplina = 'Engenharia de Software';
UPDATE disciplinas SET Laboratorio = 'Laboratório A7' WHERE disciplina = 'Redes de Computadores';
UPDATE disciplinas SET Laboratorio = 'Laboratório A8' WHERE disciplina = 'Segurança da Informação';
UPDATE disciplinas SET Laboratorio = 'Laboratório A9' WHERE disciplina = 'Fundamentos de Administração';
UPDATE disciplinas SET Laboratorio = 'Laboratório A9' WHERE disciplina = 'Lógica de Programação';
UPDATE disciplinas SET Laboratorio = 'Laboratório A10' WHERE disciplina = 'Sistemas Operacionais'; 

/* apenas os nomes e cidades dos alunos */ 
SELECT nome, cidade FROM alunos; 

/* Registrar a cidade dos alunos */ 
UPDATE alunos SET cidade = 'Recife' WHERE nome IN ('Ana Souza', 'Bruno Lima', 'Carla Santos', 'Diego Alves', 'Elisa Rocha', 
                                                   'Felipe Melo', 'Gabriela Costa', 'Henrique Silva', 'Igor Martins', 'Joana Ferreira');
                                                   
UPDATE alunos SET cidade = 'Camaragibe' WHERE nome IN ('Lucas Pereira', 'Mariana Lopes', 'Nicolas Gomes', 'Paulo Mendes', 
                                                   'Renata Lima', 'Samuel Barros', 'Tatiana Nunes', 'Vinícius Araújo', 'Wesley Cardoso'); 
                                                   
UPDATE alunos SET cidade = 'Camaragibe' WHERE nome IN ('Olívia Ramos');       

UPDATE alunos SET cidade = 'Jaboatão' WHERE nome IN ('Aline Monteiro', 'Beatriz Cavalcanti', 'Caio Dantas', 'Daniela Freitas', 'Eduardo Tavares',
                                                     'Fernanda Queiroz', 'Gustavo Moura', 'Isabela Castro', 'José Roberto', 'Karen Albuquerque'); 
                                                     
UPDATE alunos SET cidade = 'Paulista' WHERE nome IN ('Helena Paiva', );         

UPDATE alunos SET cidade = 'Paulista' WHERE nome IN ('Leandro Farias', 'Mônica Ribeiro', 'Natália Pires', 'Otávio Correia', 'Priscila Andrade', 
                                                     'Rafael Batista', 'Sabrina Oliveira', 'Thiago Moreira', 'Vitória Fernandes', 'Talita Barbosa');     
 
 UPDATE alunos SET cidade = 'Igarassu' WHERE nome IN ('Ulisses', 'Cristiane Melo', 'Yuri Cavalcanti'); 
 
 UPDATE alunos SET cidade = 'Paulista' WHERE nome IN ('Savio Alves');  
                                                     
 /* Quantos Alunos existem ? */
 SELECT COUNT(*) as Total_alunos FROM alunos;
 
 /* Qual é a média geral dos alunos ? */
 SELECt round(AVG(nota), 2) AS Media_geral FROM alunos;
 
 /* Quem possui a maior nota ? */
 SELECT nome, MAX(nota) AS Maior_nota FROM alunos WHERE nota = (SELECT MAX(nota) FROM alunos);
 
 /* Quem possui a menor nota ? */ 
 SELECT nome, MIN(nota) AS Menor_nota FROM alunos WHERE nota = (SELECT MIN(nota) FROM alunos);
 
 /* Qual a turma possui mais alunos */ 
SELECT turma, COUNT(*) AS total_turmas FROM alunos GROUP BY turma ORDER BY total_turmas DESC;

/* Quais são os melhores estudantes */ 
SELECT nome, nota FROM alunos WHERE nota >= 7 ORDER BY nota DESC LIMIT 20;

/* Classificação dos Alunos */ 
/* A coordenação deseja que o sistema apresente automaticamente a situação de cada aluno. Os estudantes deverão aparecer como: Aprovado, Recuperação e Reprovado */ 
SELECT nome, nota, 
CASE 
	WHEN nota >= 7 THEN 'Aprovado' 
    WHEN nota >= 5 THEN 'Recuperação'
    ELSE 'Reprovado'
end as situacao FROM alunos ORDER BY nota DESC;

/* Relatório completo dos aprovados e reprovados */ 
SELECT 
  id, nome, idade, turma, nota, cidade,
  CASE 
      WHEN nota >= 7 THEN 'Aprovado'
      WHEN nota >= 5 then 'Recuperação' 
      else 'Reprovado'
  END as situacao 
  
FROM alunos 
ORDER BY turma, nome;

/* Relatório dos alunos aprovados */
SELECT
    id,
    nome,
    idade,
    turma,
    nota,
    cidade,
    'Aprovado' AS situacao
FROM alunos
WHERE nota >= 7
ORDER BY nota DESC;

/* Relatório completo dos aprovados - Parte 1 */ 
SELECT id, nome, idade, turma, nota, cidade FROM alunos WHERE nota >= 7 ORDER BY nota DESC;

/* Relatório completo de disciplinas atualizadas - Parte 2 */ 
SELECT id, disciplina, professor, carga_horaria, laboratorio FROM disciplinas ORDER BY disciplina;
   
/* Relatório de conferência das correções dos alunos - Parte 3 */ 
SELECT nome, idade, turma, nota FROM alunos WHERE nome in ('Diego Alves', 'Felipe Melo', 'Ana Souza'); 

/* Relatório de conferência das correções das disciplinas - Parte 4 */ 
SELECT disciplina, professor, carga_horaria FROM disciplinas WHERE disciplina = 'Programação Web'; 

/* Relatório do Histórico das alterações realizadas - Parte 5 */ 
SELECT nome, turma, nota FROM alunos WHERE nome in('Ana Souza', 'Diego Alves', 'Felipe Melo') UNION ALL SELECT disciplina, professor, carga_horaria from disciplinas 
WHERE disciplina = 'Programação Web';

/* Relatório dos impactos das correções no desempenho - Parte 6*/ 
SELECT nome, 
	   nota,
       CASE 
       	   WHEN nota >= 7 THEN 'Aprovado' 
           WHEN nota >= 5 THEN 'Recuperação' 
           else 'Reprovado' 
       END AS situacao 
FROM alunos 
WHERE nome IN ('Ana Souza', 'Diego Alves', 'Felipe Melo');

/* Selecionando apenas Felipe Melo */
SELECT *
FROM alunos
WHERE nome = 'Felipe Melo';

/* Apagando o Registro de Felipe Melo que é do ID 61 */
DELETE FROM alunos
WHERE id = 61;
 