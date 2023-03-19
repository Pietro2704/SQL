-- Criando banco de dados com padrao utf8

/*
create database Pietro
default character set utf8
default collate utf8_general_ci;
*/



-- Usar o banco q criamos

/*
use pietro;
*/



-- criar tabela gafanhoto

/*
create table gafanhoto(
id integer not null auto_increment,
nome varchar(50) not null,
profissao varchar(10),
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(40) default 'Brasil',
primary key(id)
)default charset = utf8;
*/



-- describe gafanhoto;	-- Descreve a tebela

-- select * from gafanhotos;	-- Ve os registros q tem dentro da tabela



/*
insert into gafanhoto	-- Insere dentro de gafanhoto
(id,nome,profissao,nascimento,sexo,peso,altura,nacionalidade)	-- Que tem essas colunas
values (default,'Enzo','Estudant','2007-03-12','M','56.0','1.75',default);	-- Esses valores
*/



-- CRIA UMA TABELA MEIO MERDA

/*
create table primeira_tabela(
profissao char (5)
);
*/



-- MODIFICANDO A ESTRUTURA DA TABELA MEIO MERDA

/*
alter table primeira_tabela		-- Modifique a estrutura da tabela primeira_tabela

-- add column num integer first;	-- Coloque uma coluna na primeira posição chamada num com caracteristica de inteiro 

-- add column profissao varchar(250);	-- Add coluna  profissao q eh varchar

-- add column ra varchar (200) after nome;	-- Add coluna dps do nome chamada ra q eh varchar 

-- modify column profissao varchar(10);		-- Troque a coluna profissao para ser varchar

-- change column profissao prof varchar (10);	-- Troque profissao por prof

-- rename to github;			-- Renomeia a tabela pra github
*/



/*
select * from github;	-- Ve os registros q tem dentro da tabela
*/



/*
alter table github

-- drop column num;	-- apaga a coluna num

-- drop column prof;	-- apaga a coluna prof

-- drop column ra;	-- apaga coluna ra

-- rename to formulario;	-- renomeia pra formulario
*/


/*
drop table formulario;	-- apaga a tabela toda
*/


/*
create table if not exists cursos(	-- Cria a tabela se ela ainda nn existir
nome varchar(50) not null unique,	-- UNIQUE != primary key, primary key tem mtt mais coisa por tras....
descricao text,
carga integer unsigned,		-- unsigned = UN(sem) - SIGNED(sinal).....
totaulas integer unsigned,
ano year default '2022'
)default charset = utf8;
*/



/*
alter table cursos
add primary key (idcursos);	-- add coluna idcursos q é primary key
*/



/*
insert into cursos	-- Se colocar os valores na ordem certa, não precisa colocar as colunas da tabela
values
('1','HTML4','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PGP','Curso de PHP para iniciantes','40','20','2010'),
('5','Jarva','Introdução à Linguagem Java','10','29','2000'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Rítmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','YouTuber','Gerar polêmica e ganhar inscritos','5','2','2018');
*/



/*
describe cursos;
*/

/*
select * from cursos;	
*/



/*	SEM ESPECIFICAR "ONDE" VAI DAR ERRADO.... CUIDADO

update cursos	-- Atualiza a tabela cursos

-- set nome = 'HTML5'		-- coloca o nome de html5
-- where idcursos = '1';	-- onde o id for igual a 1



-- set nome = 'PHP', ano = '2015'	-- coloca o nome de php e o ano de 2015
-- where idcursos = '4';		-- onde o id for igual a 1



-- set nome = 'Java',carga = '40',ano = '2015'	-- coloca o nome de java, a carga de 40 e o ano de 2015
-- where idcursos = 5;				-- onde idcursos seja 5
*/



/*
delete from cursos	-- Delete da tabela cursos
where idcursos = '8';	-- onde idcursos for 8
*/


/*
delete from cursos	-- Delete da tabela
where ano = '2018'	-- onde ano for 2018
limit 2;		-- limite de duas linhas
*/


/*
truncate table cursos;	-- Apaga todos os registros dessa tabela
*/



/*
insert into cursos values
('1','HTML5','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','40','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','20','8','2014'),
('4','PHP','Curso de PHP para iniciantes','40','20','2015'),
('5','Java','Introdução à Linguagem Java','40','29','2015'),
('6','MySQL','Banco de Dados MySQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016');
*/

/*
use cadastro;
*/



-- APRENDENDO SELECT

/*
select * from cursos
order by nome desc;	-- em ordem descendente
*/


/*
select ano, carga, nome from cursos
order by ano, nome;	-- se nn especificar ele fica em ascendente
*/

/*
select nome, carga, totaulas, ano from cursos
where ano <= '2016'
order by nome;
*/


/*
select * from cursos
where totaulas between 20 and 30
order by nome;
*/


/*
select nome, ano, carga from cursos
where carga in ('40','50','60')
order by carga desc;
*/


/*
select nome,totaulas,carga from cursos
where carga>=40 and totaulas<=30
order by nome;
*/


/*
select nome, ano from cursos
where nome like 'p%'
order by ano desc;
*/


/*
select nome, ano from cursos
where nome like '%A'
order by ano desc;
*/


/*
select nome, ano from cursos
where nome like '%c%'
order by ano desc;
*/


/*
select nome, ano from cursos
where nome not like '%e%'
order by ano desc;
*/


/*
select nome, ano from cursos
where nome like 'ph%p_';
*/


/*
select distinct nacionalidade from gafanhotos
order by nacionalidade;
*/


/*
select distinct carga from cursos
order by carga;
*/


/*
select count(*) from cursos;
*/


/*
select count(*) from cursos where carga='40' or totaulas<=30;
*/


/*
select max(totaulas) from cursos;
*/


/*
select nome,totaulas,ano from cursos where ano=2016
order by totaulas, nome;
*/


/*
select max(totaulas) from cursos where ano='2016';
*/


/*
select nome, min(totaulas), ano from cursos where ano=2016;
*/


/*
select nome, max(carga), ano from cursos where ano=2016;
*/


/*
select * from cursos
order by ano;
*/


/*
select sum(carga) from cursos where idcurso between 1 and 10;
*/


/*
select nome,carga from cursos where idcurso<=10;
*/


/*
select avg(carga) from cursos where ano=2016;
*/


/*
select nome, carga from cursos where ano=2016;
*/


/*
select carga, count(*) from cursos
group by carga desc;
*/


/*
select totaulas, count(nome) from cursos
group by totaulas
order by totaulas;
*/


/*
select count(*) from cursos where totaulas=30;
*/


/*
select carga, count(*)from cursos
group by carga
having count(*)>4
order by carga desc;
*/


/*
select carga, count(*) from cursos
where ano>2015
group by carga
having carga > (select avg(carga) from cursos);
*/



/* EXERCICIOS: 

select * from gafanhotos where sexo='F';

select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';

select * from gafanhotos where profissao='Programador' and sexo='M';

select * from gafanhotos where sexo='F' and nacionalidade='Brasil' and nome like 'J%';

select nome,nacionalidade from gafanhotos where sexo='M' and nome like '%silva%' and nacionalidade<>'Brasil' and peso<'100';

select max(altura) from gafanhotos where sexo='M' and nacionalidade='Brasil';

select nome,altura,nacionalidade from gafanhotos where sexo='M' and nacionalidade='Brasil' and altura in (select max(altura) from gafanhotos);

select avg(peso) from gafanhotos;

select id, nome,sexo, peso, nacionalidade, nascimento from gafanhotos
where peso in (select min(peso) from gafanhotos
where sexo='F' 
and nacionalidade <> 'Brasil' 
and nascimento between '1990-01-01' and '2000-12-31');

select count(*) from gafanhotos where sexo='F' and altura>1.9;

select profissao, count(*) from gafanhotos
group by profissao;

select sexo, count(*) from gafanhotos
where nascimento >= '2005-01-01'
group by sexo;

select nacionalidade, count(*) from gafanhotos
where nacionalidade<>'Brasil'
group by nacionalidade
having count(*)>=3;

select altura,peso, count(*) from gafanhotos
where peso>100
group by altura
having altura > (select avg(altura) from gafanhotos);
*/


/*
alter table gafanhotos
add column curso_preferido int;
*/


/*
alter table gafanhotos
add foreign key (curso_preferido)
references cursos(idcurso);
*/


/*
alter table gafanhotos
rename to pessoas;
*/


/*
select p.nome, c.nome, c.ano
from pessoas as p inner join cursos as c
on c.idcurso = p.curso_preferido
order by c.ano;
*/


/*
select cursos.ano, pessoas.nome, cursos.nome, cursos.totaulas
from pessoas left join cursos
on cursos.idcurso = pessoas.curso_preferido
order by cursos.ano;
*/



/*
create table assiste(
id int auto_increment not null,
data date,
idpessoas int,
idcursos int,
primary key (id),
foreign key(idpessoas) references pessoas(id),
foreign key(idcursos) references cursos(idcurso)
)default charset = utf8;
*/



/*
select p.nome from pessoas p
join assiste a
on p.id=a.idpessoas;
*/