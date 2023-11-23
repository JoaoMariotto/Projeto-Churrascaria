create database churrascaria;
use churrascaria;

-- Tabela usuarios
CREATE TABLE usuarios(
		id_usuarios INT PRIMARY KEY AUTO_INCREMENT,
        nome VARCHAR(100),
        endereco VARCHAR(150),
        numero_casa INT(5),
        complemento VARCHAR(25),
        telefone VARCHAR(20),
        posicao VARCHAR(20) DEFAULT 'cliente'
);
-- Tabela Carnes
CREATE TABLE carnes(
	id_carnes INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    tipo VARCHAR(20)
);
-- Tabela Grupo Carnes
CREATE TABLE grupoCarnes(
	id_grupoProdutos INT PRIMARY KEY AUTO_INCREMENT,
    id_carnes INT,
    precoTotal DECIMAL(10,2),
    FOREIGN KEY(id_carnes) REFERENCES carnes(id_carnes)
);
-- Tabela Bebidas 
CREATE TABLE bebidas(
	id_bebidas INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
	preco DECIMAL(10,2)
);
-- Tabela Grupo Bebidas
CREATE TABLE grupoBebidas(
	id_grupoBebidas INT PRIMARY KEY AUTO_INCREMENT,
    id_bebidas INT,
    precoTotal DECIMAL(10,2),
    FOREIGN KEY(id_bebidas) REFERENCES bebidas(id_bebidas)
);
-- Tabela Salada
CREATE TABLE salada(
	id_salada INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
	preco DECIMAL(10,2)
);
-- Tabela Grupo Saladas
CREATE TABLE grupoSaladas(
	id_grupoSaladas INT PRIMARY KEY AUTO_INCREMENT,
    id_salada INT,
    precoTotal DECIMAL(10,2),
	FOREIGN KEY(id_salada) REFERENCES salada(id_salada)
);
-- Tabela Acompanhamentos
CREATE TABLE acompanhamentos(
	id_acompanhamentos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
	preco DECIMAL(10,2)
);
-- Tabela Grupo Acompanhamentos
CREATE TABLE grupoAcompanhamentos(
	id_grupoAcompanhamentos INT PRIMARY KEY AUTO_INCREMENT,
    id_acompanhamentos INT,
    precoTotal DECIMAL(10,2),
	FOREIGN KEY(id_acompanhamentos) REFERENCES acompanhamentos(id_acompanhamentos)
);
-- Tabela Doces
CREATE TABLE doces(
	id_doces INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
	preco DECIMAL(10,2)
);
-- Tabela Grupo Doces
CREATE TABLE grupoDoces(
	id_grupoDoces INT PRIMARY KEY AUTO_INCREMENT,
    id_doces INT,
    precoTotal DECIMAL(10,2),
	FOREIGN KEY(id_doces) REFERENCES doces(id_doces)
);

-- Inserindo ADM e usuario comum
INSERT INTO usuarios(nome, endereco, numero_casa, complemento, telefone, posicao) 
VALUES
('ADM', 'Rua Florzona verde', '111', 'Casa', '(16)99988-2222', 'ADM');

INSERT INTO usuarios(nome, endereco, numero_casa, complemento, telefone) 
VALUES
('Arthur Boer', 'Rua Florzinha amarela', '69', 'Casa', '(16) 99222-3333');

SELECT * FROM usuarios;

-- Inserindo Carnes
INSERT INTO carnes(nome, preco, tipo)
VALUES 
('Fraldinha', 31.00, 'Normal'),
('Maminha', 30.00, 'Normal'),
('Contra-File', 34.00, 'Normal'),
('Paleta Bovina', 32.00, 'Normal'),
('Picanha', 36.00, 'Especial'),
('Costela Bovina', 37.00, 'Especial'),
('Filet-Mignon', 39.00, 'Especial'),
('Alcatra', 37.00, 'Especial');

SELECT * FROM carnes;

-- Inserindo Bebidas
INSERT INTO bebidas(nome, preco)
VALUES
('Refrigerante 2L', 9.00),
('Refrigerante Lata', 5.00),
('Suco natural', 10.00),
('Suco lata', 5.00),
('Cerveja lata', 5.00),
('Chopp lata', 9.00);

SELECT * FROM bebidas;

-- Inserindo Saladas
INSERT INTO salada(nome, preco)
VALUES
('Alface', 12.00),
('Salada Japonesa', 20.00),
('Salada colorida', 15.00),
('Mix de saladas', 16.00);

SELECT * FROM salada;

-- Inserindo Acompanhamentos
INSERT INTO acompanhamentos(nome, preco)
VALUES
('Arroz Branco', 5.00),
('Batata Frita', 5.00),
('Farofa', 5.00),
('Vinagrete ao molho negro', 5.00);

SELECT * FROM acompanhamentos;

-- Inserindo Doces
INSERT INTO doces(nome, preco)
VALUES
('Bolo chocolate', 7.00),
('Doces diversos', 5.00);

SELECT * FROM doces;