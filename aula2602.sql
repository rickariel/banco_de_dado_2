-- liste as disciplinas que possuem carga horária menor que 80 horas:
select nome, carga from disciplina where carga < 80;
-- liste as disciplinas que possuem carga horária entre 40 e 80 horas:
select nome, carga from disciplina where carga < 80 and carga > 40;
-- liste os professores em que o cpf, inicie pelo número 1:
select nome, cpf from professor where cpf like '1%';
-- mostre o nome do aluno e o curso que está matriculado:
select distinct aluno.nome as nome_aluno, curso.curso as nome_curso from aluno inner join matricula on aluno.id = matricula.id_a inner join curso on matricula.id_c = curso.id;
-- mostre o nome do aluno, o curso e sua respectiva mensalidade:

-- mostre o quantitativo de professores por sexo:

-- mostre o quantitativo de professores por nível:

-- mostre o nome e a idade dos professores:

-- listar o número de alunos matriculados por curso:

-- mostre o nome e a idade do professor mais velho:

-- listar o nome do curso em que não há nenhum aluno matriculado:

-- listar o nome do aluno que não está matriculado em nenhum curso: