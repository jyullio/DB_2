/*
CREATE DATABASE my_db;

USE my_db;

CREATE TABLE CLIENTES(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(255) NOT NULL,
    Endereco VARCHAR(255),
    Telefone VARCHAR(15),
    CPF VARCHAR(14) UNIQUE NOT NULL,
    DataNascimento DATE
);
*/

INSERT INTO CLIENTES(Nome, Endereco, Telefone, CPF, DataNascimento) VALUES("Maria da silva" , "Avenida das Arvores 456" , "(21)9876-5432","987.654.451-00" , "1985-03-10");
INSERT INTO CLIENTES(Nome, Endereco, Telefone, CPF, DataNascimento) VALUES("José da Silva" , "Rua das pedras 789" , "(31)5555-1234","123.456.789-01" , "1992-08-25");
INSERT INTO CLIENTES(Nome, Endereco, Telefone, CPF, DataNascimento) VALUES("Ana Santos" , "Avenida Principal 1234" , "(41)9876-4321","456.789.123-02" , "1980-12-03");
INSERT INTO CLIENTES(Nome, Endereco, Telefone, CPF, DataNascimento) VALUES("João pereira" , "Rua das Flores 789" , "(11)8765-4321","789.123.456-03" , "1975-06-17");
INSERT INTO CLIENTES(Nome, Endereco, Telefone, CPF, DataNascimento) VALUES("João Calhau" , "Rua Coronel Fulano 456" , "(28)7867-8779","7874565.678-90" , "1987-09-24");

SELECT COUNT(*) AS TotalClientes From CLIENTES;

SELECT * FROM CLIENTES WHERE DataNascimento < "1980-01-01" AND Telefone LIKE "(11)%";

SELECT Nome, Count(*) AS TotalClienteComMesmoNome
FROM CLIENTES
GROUP BY Nome
HAVING COUNT(*) >= 1;



