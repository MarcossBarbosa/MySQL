DROP DATABASE IF EXISTS FMF;
CREATE SCHEMA FMF; 
USE FMF;

create table jogadores(
idjogador int primary key auto_increment,
nomeJogador varchar(100) not null,
cpfJogador bigint not null,
camisaJogador int not null,
telefoneJogador bigint,
emailJogador varchar(50) not null,
dataNascimento date not null,
antigoClubeJ varchar(50) not null
);
alter table jogadores add celular varchar(50);
show tables;
describe jogadores;
alter table jogadores modify column celular bigint not null;
alter table jogadores drop celular;

create table estatisticas(
idEstatisticas int primary key auto_increment,
Tempo_contrato int not null,
velocidade_media float not null,
numero_gols int not null,
gols_Porpartida int not null,
valor_mercado float not null,
media_golsT float not null,
posição  varchar(15) not null,
QTD_jogos int not null,
peso float,
altura float, 
obersevções varchar(255),
veiculo_passe varchar(100) not null,
titulos varchar(100) not null,
posições_secundaria varchar(15) not null,
n_gols_carreira int not null,
n_gols_clube int  not null,
lesões int not null,
pe varchar(10)
);
