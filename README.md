# Resumão do que vimos

## COMANDOS SQL

### DDL - Data Definition Language - Linguagem de Definição de Dados.

São os comandos que interagem com os objetos do banco.

* CREATE
* ALTER
* DROP

### DQL - Data Query Language - Linguagem de Consulta de dados.

São os comandos de consulta.

* SELECT


### DML  - Data Manipulation Language - Linguagem de Manipulação de Dados.

São os comandos que interagem com os dados dentro das tabelas.

* INSERT 
* DELETE
* UPDATE

<!--
### DCL - Data Control Language - Linguagem de Controle de Dados.
São os comandos para controlar a parte de segurança do banco de dados.
* GRANT
* REVOKE
* DENY


### DTL - Data Transaction Language - Linguagem de Transação de Dados.
São os comandos para controle de transação.
* BEGIN TRANSACTION
* COMMIT
* ROLLBACK
-->

## PRIMARY KEY
Uma chave primária é um identificador único para um registro em uma tabela de banco de dados. Ela garante que nenhum dos dois registros em uma tabela tenha o mesmo valor chave e, portanto, garante a exclusividade de cada registro.

**É importante** porque identifica de forma única uma linha numa tabela de banco de dados.

### Regras:
* Uma chave primária deve identificar de forma única cada linha de uma tabela.
* Uma chave primária não pode ser nula.
* Uma chave primária tem de ser uma única coluna.
* Uma tabela só pode ter uma chave primária.

## FOREIGN KEY
Chave estrangeira é o campo que estabelece o relacionamento entre duas tabelas. Assim, uma coluna corresponde à mesma coluna que é a chave primária de outra tabela. Dessa forma, deve-se especificar na tabela que contém a chave estrangeira quais são essas colunas e à qual tabela está relacionada. O banco de dados irá verificar se todos os campos que fazem referências à tabela estão especificados.

**É importante** pois possibilita a implementação da integridade de dados diretamente no banco de dados, conhecida como **integridade referencial.**

## JOIN
É uma forma de relacionar duas tabelas e gerar uma tabela resultante com as relações explícitas entre elas.

**É importante** para a manipulação de tabelas. Trata-se de uma forma de lidar com os dados, buscando relacionar dois conjuntos de dados na base. Ou seja, resulta em uma tabela que traz os valores que estão em ambas as tabelas iniciais.

### TIPOS DE JOINS

* **INNER JOIN** - Traz uma ideia de buscar a intersecção entre as tabelas. Ou seja, resulta em uma tabela que traz os valores que estão em ambas as tabelas iniciais.


* **LEFT JOIN** - Resulta em uma tabela que exibe somente os itens da tabela da esquerda, incluindo os itens em interseção com a tabela direita. Contudo, exclui da relação o resto da tabela da direita.



* **RIGHT JOIN** - Pega os dados completos da tabela da direita, incluindo os que também estão na tabela da direita.



* **FULL JOIN** - É o comando para pegar todos os valores das duas tabelas e unir em uma única resultante.


