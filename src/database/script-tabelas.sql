-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
create database boxe;
use boxe;

create table usuario (
idUsuario int primary key auto_increment,
nome varchar(50),
email varchar(60) unique,
cpf char(11) unique,
senha varchar(80)
);


create table feedback (
idFeedback int auto_increment,
motivo_visita varchar(100),
melhorias varchar(100),
achou char(3),
experiencia decimal(10,2),
facilidadeNavegar decimal(10,2),
recomendar decimal(10,2),
fkUsuario int,
foreign key (fkUsuario) references usuario(idUsuario),
primary key (idFeedback, fkUsuario)
);


insert into usuario(nome, email, cpf, senha) values
	('Vittor', 'vittor@gmail.com', '49658797816', '123456');

insert into feedback(motivo_visita, melhorias, achou, experiencia, facilidadeNavegar, recomendar, fkUsuario)
	('Pesquisando sobre boxe', 'precisa melhorar o footer', 'Sim', '5', '5', '5', 1);
/* para sql server - remoto - produção */

CREATE TABLE usuario (
	id INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
);

CREATE TABLE aviso (
	id INT PRIMARY KEY IDENTITY(1,1),
	titulo VARCHAR(100),
    descricao VARCHAR(150),
	fk_usuario INT FOREIGN KEY REFERENCES usuario(id)
); 

CREATE TABLE medida (
	id INT PRIMARY KEY IDENTITY(1,1),
	temperatura DECIMAL,
	umidade DECIMAL,
	momento DATETIME,
	fk_aquario INT
);


