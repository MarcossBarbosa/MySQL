DROP DATABASE IF EXISTS AULA;
CREATE SCHEMA AULA; 
USE AULA;

create table CLIENTES(
	idClientint primary key auto_increment, 
    nomeCliente varchar(100) not null,
    cpfCliente bigint not null 
);
create table produto(
idProduto primary key auto_increment,
nomeProduto varchar(255) not null,
nomeFornecedor varchar(255) not null,
cnpjFornecedor bigint not null,
precoProduto float

);