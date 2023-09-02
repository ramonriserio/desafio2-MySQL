-- schema

create database imobiliaria_aluguel;
use imobiliaria_aluguel;
show tables;

create table locatarios (
	idLocatario INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    endereco VARCHAR(45) NOT NULL,
    celular CHAR(11) NOT NULL,
    nome_banco VARCHAR(20),
    numero_banco CHAR(3) NOT NULL,
    agencia CHAR(4) NOT NULL,
    conta_corrente VARCHAR(10) NOT NULL
);
show tables;
describe locatarios;

create table locadores (
	idLocador INT PRIMARY KEY auto_increment,
    nome VARCHAR(45) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    endereco VARCHAR(45) NOT NULL,
    celular CHAR(11) NOT NULL
);
show tables;
describe locadores;

create table imoveis (
	idImovel INT PRIMARY KEY auto_increment,
    locatarios_idLocatario INT,
    FOREIGN KEY (locatarios_idLocatario) references locatarios(idLocatario),
    endereco VARCHAR(45) NOT NULL UNIQUE,
    tipoImovel ENUM('Casa','Apartamento','Galpão','Loja') NOT NULL,
    valorPretendido FLOAT NOT NULL
);
show tables;
describe imoveis;

create table imoveis_locados (
    imoveis_idImovel INT,
    FOREIGN KEY (imoveis_idImovel) references imoveis(idImovel),
	locadores_idLocador INT,
    FOREIGN KEY (locadores_idLocador) references locadores(idLocador),
--    imoveis_locatarios_idLocatario INT,
--    FOREIGN KEY (imoveis_locatarios_idLocatario) references imoveis(locatarios_idLocatario),
    valorAlugado FLOAT NOT NULL
);
show tables;
describe imoveis_locados;