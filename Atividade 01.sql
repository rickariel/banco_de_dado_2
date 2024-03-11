select nome, carga from disciplina where carga < 80;

select nome, carga from disciplina where carga < 80 and carga > 40;

select nome, cpf from professor where cpf like '1%';

select distinct aluno.nome as nome_aluno, curso.curso as nome_curso from aluno inner join matricula on aluno.id = matricula.id_a inner join curso on matricula.id_c = curso.id;

select * from aluno_matricula;
select * from curso;
select * from aluno;
select * from matricula;