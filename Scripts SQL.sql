/*Use a Database*/
USE Sucos;

/*Create a Database*/
CREATE DATABASE IF NOT EXISTS Sucos;

/*Delete a Database*/
DROP DATABASE Sucos;

/*Create tables*/
CREATE TABLE TblCliente
(
CPF VARCHAR(11) NOT NULL,
Nome_Cliente VARCHAR(90) NOT NULL,
Endereco_1 VARCHAR(150) NOT NULL,
Endereco_2 VARCHAR(150),
Bairro VARCHAR(50) NOT NULL,
Cidade VARCHAR(50) NOT NULL,
Estado VARCHAR(50) NOT NULL,
CEP VARCHAR(8) NOT NULL,
Idade SMALLINT NOT NULL,
Sexo VARCHAR(1) NOT NULL,
Limite_de_Credito FLOAT NOT NULL,
Volume_de_Compra FLOAT NOT NULL,
Primeira_Compra BIT(1) NOT NULL
);

CREATE TABLE TblVendedor
(
Matricula VARCHAR(5) NOT NULL,
Nome_Vendedor VARCHAR(100) NOT NULL,
Percentual_Comissao FLOAT NOT NULL,
Data_Admissao DATE NOT NULL,
De_Ferias BIT(1) NOT NULL
);

CREATE TABLE TblProduto
(
Codigo_Produto VARCHAR(20) NOT NULL,
Nome_Produto VARCHAR(150) NOT NULL,
Embalagem VARCHAR(45) NOT NULL,
Tamanho VARCHAR(50) NOT NULL,
Sabor VARCHAR(50) NOT NULL,
Preco_de_Lista FLOAT NOT NULL
);

/*Delete a table or a database*/
DROP DATABASE IF EXISTS Sucos;
DROP TABLE TblCliente;
DROP TABLE TblProduto;
DROP TABLE TblVendedor;

/*View the table content*/
SELECT * FROM TblCliente;
SELECT * FROM TblVendedor;
SELECT * FROM TblProduto;

/*Making changes in a table*/
UPDATE TblVendedor SET Percentual_Comissao = 0.11
WHERE Matricula = '0236';

UPDATE TblVendedor SET Nome = 'José Geraldo da Fonseca Junior'
WHERE Matricula= '00233';

/*Delete something from a table*/
DELETE FROM TblVendedor WHERE Matricula = '00233';

/*Add columns in a table*/
ALTER TABLE TblVendedor 
ADD COLUMN Data_Admissao DATE NOT NULL, 
ADD COLUMN De_Ferias BIT(1) NOT NULL;

/*Inset data into a table*/
INSERT INTO TblVendedor VALUES
('00233', 'João Geraldo da Fonseca Júnior', 0.11, 15/08/2014, 0),
('00236', 'Cláudia Morais', 0.08, 17/09/2013, 1),
('00237', 'Roberta Martins', 0.11, 18/03/2017, 1),
('00238', 'Péricles Alves', 0.11, 21/08/2016, 0);

/*Create a PK using SQL*/
ALTER TABLE TblVendedor ADD PRIMARY KEY(Matricula);

/*Insert data into TblProduto*/
INSERT INTO TblProduto VALUES
('1040107', 'Light - 350 ml - Melância', 'Lata', '350 ml', 'Melância', 4.56),   
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Melância', 'PET', '1,5 Litros', 'Melância', 19.51),
('1088126', 'Linha Citros - 1 Litro - Limão', 'PET', '1 Litro', 'Limão', 7.00),
('5449314', 'Frescor do Verão - 350 ml - Limão', 'Lata', '350 ml', 'Limão', 2.46),
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Garrafa', '470 ml', 'Manga', 5.18),
('1042712', 'Linha Citros - 700 ml - Limão', 'Garrafa', '700 ml', 'Limão', 4.90),
('7889756', 'Pedaços de Frutas - 1,5 Litros - Maça', 'PET', '1,5 Litros', 'Maçã', 18.01),
('1002767', 'Videira do Campo - 700 ml - Cereja/Maça', 'Garrafa', '700 ml', 'Cereja/Maçã', 8.41);

/*Using a Filter*/
SELECT * FROM TblProduto WHERE Codigo_Produto = '1000889';

/*Insert data into TblCliente*/
INSERT INTO TblCliente VALUES
('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','','Água Santa','Rio de Janeiro','RJ','22000000','2000-02-12',18,'M',100000,200000,1),
('2600586709','César Teixeira','Rua Conde de Bonfim','','Tijuca','Rio de Janeiro','RJ','22020001','2000-03-12',18,'M',120000,220000,0),
('95939180787','Fábio Carvalho','R. dos Jacarandás da Península','','Barra da Tijuca','Rio de Janeiro','RJ','22002020','1992-01-05',16,'M',90000,180000,1),
('9283760794','Edson Meilelles','R. Pinto de Azevedo','','Cidade Nova','Rio de Janeiro','RJ','22002002','1995-10-07',22,'M',150000,250000,1),
('7771579779','Marcelo Mattos','R. Eduardo Luís Lopes','','Brás','São Paulo','SP','88202912','1992-03-25',25,'M',120000,200000,1),
('5576228758','Petra Oliveira','R. Benício de Abreu','','Lapa','São Paulo','SP','88192029','1995-11-14',22,'F',70000,160000,1),
('8502682733','Valdeci da Silva','R. Srg. Édison de Oliveira','','Jardins','São Paulo','SP','82122020','1995-10-07',22,'M',110000,190000,0),
('1471156710','Érica Carvalho','R. Iriquitia','','Jardins','São Paulo','SP','80012212','1990-09-01',27,'F',170000,245000,0),
('3623344710','Marcos Nougeuira','Av. Pastor Martin Luther King Junior','','Inhauma','Rio de Janeiro','RJ','22002012','1995-01-13',23,'M',110000,220000,1),
('50534475787','Abel Silva ','Rua Humaitá','','Humaitá','Rio de Janeiro','RJ','22000212','1995-09-11',22,'M',170000,260000,0),
('5840119709','Gabriel Araujo','R. Manuel de Oliveira','','Santo Amaro','São Paulo','SP','80010221','1985-03-16',32,'M',140000,210000,1),
('94387575700','Walber Lontra','R. Cel. Almeida','','Piedade','Rio de Janeiro','RJ','22000201','1989-06-20',28,'M',60000,120000,1),
('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura','','Jardins','São Paulo','SP','81192002','1983-12-20',34,'M',200000,240000,0),
('5648641702','Paulo César Mattos','Rua Hélio Beltrão','','Tijuca','Rio de Janeiro','RJ','21002020','1991-08-30',26,'M',120000,220000,0),
('492472718','Eduardo Jorge','R. Volta Grande','','Tijuca','Rio de Janeiro','RJ','22012002','1994-07-19',23,'M',75000,95000,1);

/*Select data from TblCliente*/
SELECT * FROM TblCliente;

/*Using Filters*/
SELECT * FROM TblCLiente WHERE Estado = 'SP';

SELECT * FROM TblProduto WHERE Embalagem = 'Garrafa';

SELECT * FROM TblProduto WHERE Preco_de_Lista >= 10;

SELECT * FROM TblCliente WHERE YEAR(Data_Nascimento) BETWEEN '1990' AND '2000'; 


