-- DDL
drop schema if exists LOJA; 
create database LOJA;
use LOJA;
show tables;
desc CLIENTES;

create table CLIENTES(
IDcliente int primary key auto_increment,
nome varchar(100) not null,
CPF varchar(20) not null,
email varchar(30) not null,
telefone bigint
);
alter table CLIENTES add telefone2 int not null; 
alter table CLIENTES modify column telefone2 bigint not null;
-- drop table CLIENTES;



create table PRODUTOS(
IDproduto int primary key auto_increment,
descricao varchar(100) not null,
valorUnitario double not null,
valorVenda double not null,
QTDEstoque int not null
);
-- insert 10
insert into 
PRODUTOS
(descricao,valorUnitario,valorVenda,QTDEstoque)
values
('Biscoito', 1.50, 2.00, 100),
('Miojo', 1.0, 2.50, 50),
('Macarrão', 4.99, 5.70, 70),
('Farinha de trigo', 3.50, 4.99, 10),
('Arroz', 10.0, 12.0, 150),
('Feijão', 1.0, 12.0, 60),
('Óleo', 3.0, 4.99, 90),
('Massa de Tomate', 1.60, 2.00, 200),
('Extrato de tomate', 1.50, 2.10, 30),
('Toddy', 7.50, 10.00, 120);

-- update
 update PRODUTOS set valorVenda = 5.00 where IDproduto = 4;
 update PRODUTOS set valorVenda = 10.50 where IDproduto = 11;
 update PRODUTOS set valorVenda = 5.50 where IDproduto = 8;
 update PRODUTOS set valorVenda = 2.50 where IDproduto = 10;
 update PRODUTOS set valorVenda = 3.00 where IDproduto = 9;
 
 -- update com condição
 
 update PRODUTOS set valorVenda = 10.0 where descricao = 'Toddy' and valorVenda = 10.50;
 update produtos set valorVenda = 4.99 where descricao = 'Óleo' and valorVenda = 5.00;
 update produtos set valorVenda = 10.0 where descricao = 'Arroz' and valorVenda = 11.00;
 update produtos set valorVenda = 5.70 where descricao = 'Macarrão' or valorVenda = 5.90;
 update produtos set valorVenda = 2.50 where descricao = 'Miojo' or valorVenda = 2.75;
 
 delete from PRODUTOS where IDproduto = 1;
 delete from PRODUTOS where IDproduto = 10;
 
 -- delete com condição 
 delete from produtos where IDproduto = 10 and QTDEstoque = 120;
 delete from produtos where descricao = 'Feijão' or IDproduto = 6; 
 delete from produtos where descricao = 'Azzoz' or IDproduto = 5;
 delete from produtos where IDproduto = 1 and descricao = 'Biscoito';
 delete from produtos where descricao = 'Farinha de trigo' and QTDEstoque = 10;

create table VENDAS(
IDvendas int primary key auto_increment,
IDcliente  int not null,
IDproduto int not null,
ValorTotal double not null
);
insert into 
VENDAS
(IDcliente,IDproduto,ValorTotal)
values
(2,2,2.0),
(6,4,5.50),
(7,6,3.0),
(8,3,6.50),
(9,1,3.59),
(10,5,10.99),
(5,7,18.99),
(4,8,5.19),
(3,9,9.59),
(1,10,1.50);

update Vendas set ValorTotal = 6.30 where IDcliente = 1;
update Vendas set ValorTotal = 6.40 where IDcliente = 2;
update Vendas set ValorTotal = 6.50 where IDcliente = 3;
update Vendas set ValorTotal = 6.60 where IDcliente = 4;
update Vendas set ValorTotal = 6.70 where IDcliente = 5;
-- CONDIÇÃO UPDADE
	update Vendas set ValorTotal = 10.0 where IDproduto  = 5 and ValorTotal = 11.0; 
    update Vendas set ValorTotal = 18.99 where IDproduto = 7 and ValorTotal = 17.99;
    update Vendas set ValorTotal = 6.50 where IDproduto = 3 and ValorTotal = 5.99;
    update Vendas set ValorTotal = 5.19 where IDproduto = 8 or ValorTotal = 5.00;
    update Vendas set ValorTotal = 9.59 where IDproduto = 9 or ValorTotal = 9.00;
    


delete from VENDAS where IDcliente = 6;
delete from VENDAS where IDcliente = 7;
-- CONDIÇÂO DELETE
	delete from vendas where IDproduto = 8 and IDcliente = 5;
    delete from Vendas where IDcliente = 1 and IDproduto = 6;
	delete from Vendas where ValorTotal = 9.0 and IDproduto = 8;
    delete from Vendas where valorTotal = 5.99 or IDproduto = 7;
    delete from Vendas where  IDproduto = 5 or IDcliente = 3;
-- DML Dados de manipulação do dado, vamos inserir dados, alterar dados e apagar dados.
-- insert inserir 

insert into
 CLIENTES 
(nome,CPF,email)
values 
('Maria da Silva','123.123.123.12','maria@gmail.com',null);

-- segunda forma 

insert into
 CLIENTES 
(nome,CPF,email,telefone)
values 
('Maria da Silva','123.123.123.12','maria@gmail.com',31999999999),
('Maria da Silva','123.123.123.12','maria@gmail.com',31999999999),
('Maria da Silva','123.123.123.12','maria@gmail.com',31999999999),
('Maria da Silva','123.123.123.12','maria@gmail.com',31999999999),
('Maria da Silva','123.123.123.12','maria@gmail.com',31999999999);

-- update 

update CLIENTES set nome = 'Maria Tela da Silva'; 
update CLIENTES set nome = 'Tela da Silva' where IDcliente = 1;

-- update com condição

update CLIENTES set nome = 'Tela da Silva', email = 'teladesucesso@gmail.com' where  IDcliente = 5 ;
update CLIENTES set CPF = '123.123.123.11' where nome = 'Maria da Silva' and CPF = '123.123.123.12';
update CLIENTES set CPF = '123.123.123.11' where nome = 'Maria da Silva' or CPF = '123.123.123.12';


-- delete tem como esoclher a tabela.

delete from CLIENTES where IDcliente = 2;

-- delete com condição 

delete from clientes where IDcliente = 1 and CPF = '123.123.123.12';
delete from clientes where IDcliente = 3 or CPF = '123.123.123.12';

-- truncate apaga todo os dados da tabela.
truncate clientes




