CREATE DATABASE firstExemple;

USE firstExemple;

--CRIANDO TABELA
CREATE TABLE periodicos(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome_periodico VARCHAR(20),
	issn INT,
	id_editora INT
	);
	
--EXIBINDO TABELAS
SHOW TABLES;

CREATE TABLE editora(
	id INTEGER AUTO_INCREMENT,
	nome_editor VARCHAR(120) UNIQUE,
	pais VARCHAR(5),
	PRIMARY KEY (id)
);

SHOW TABLES;

--Criação de chave estrangeira nomeada como chaveEstrangeira_tabelaReferenciada_tabelaOrigem
ALTER TABLE periodicos ADD CONSTRAINT fk_editora_periodicos FOREIGN KEY (id_editora) REFERENCES editora(id);

--Inserção de dados na tabela
INSERT INTO editora (nome_editor, pais) 
VALUES ('IEEE','EUA'),
       ('DataScienceMagazine','EUA');

--Testando inserção com chave repetida
INSERT INTO editora (nome_editor, pais)
VALUES ('IEEE','EU');

--Visualizando dados da tabela "editora"
SELECT * FROM editora;

INSERT INTO periodicos(nome_editor, issn, id_editora)
VALUES ('Special Issue',53139784,1);

