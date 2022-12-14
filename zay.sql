drop database if exists ZAY;
create database ZAY;
use ZAY;
 create table Categoria (
 id int primary key auto_increment,
 categorias text(800) not null );
 insert Categoria values (null,'Hombre'),(null,"Mujer");
 
 create table Marca (
 id int primary key auto_increment,
 marcas char(80) not null);
 insert Marca value (null,'Zapatillas'),(null,'Zapatos'),(null,'Botines');
 
  create table Color (
  id int primary key auto_increment,
  colores char(20) not null,
  Web char(7) not null);
  insert Color(colores,Web) value ('Blanco','#ffffff'),('Negro','#000000'),('Azul','#0000FF'),('Rojo','#FA0000'),('Rosado','#FF3691');


   
 create table Productos (
 id int primary key auto_increment,
 idCategoria int references Categoria,
 idMarca int references Marca,
  idColor int references Color,
  nombre char(80) not null,
  Descripcion char(200) not null ,
  Precio decimal (6,2),
  Descuento decimal (6,2),
  imagen varchar(50) NOT NULL);
	
 insert Productos values
 (Null,1,1,2,'Zapatillas Running Hombre adidas Duramo 10','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato1.jfif'),
 (Null,1,1,1,'Zapatillas Urbanas Hombre adidas Court-PRIMEGREEN','Consigue el mejor precio en ZAY.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',229.00,10.00,'zapato2.jfif'),
 (Null,1,1,1,'Zapatillas Urbanas Hombre adidas Breaknet Court','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato3.jfif'),
 (Null,1,1,2,'Zapatillas Running Hombre Puma Softride Cruise','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato4.jfif'),
 (Null,1,2,2,'Zapatos Urbanos Hombre adidas CourtBeat','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato500.jfif'),
 (Null,2,1,2,'Zapatillas Running Mujer Fratta Tinmar Gr','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato6.jfif'),
 (Null,2,1,2,'Zapatillas Urbanas Mujer Bearcliff Palmer2 Bl','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato7.jfif'),
 (Null,2,3,2,'Botas urbanas Mujer Bearcliff Palmer2 Bl1','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato80.jfif'),
 (Null,2,3,2,'Botas Urbanas Mujer Basement Solkyn Cl','Consigue el mejor precio en Oechsle.pe! ¡Que no te ganen! Haz tuyo tu par de zapatillas favorito.',219.00,10.00,'zapato90.jfif');

  
SELECT p.*, ca.id AS id_cat, ca.categorias FROM Productos p INNER JOIN Categoria ca ON ca.id = p.idCategoria;
SELECT p.*, m.id AS id_marc, m.marcas FROM Productos p INNER JOIN Marca m ON m.id = p.idMarca;
-- tallas y categorias 
-- SELECT p.*, ca.id AS id_cat, ca.categorias, t.id AS id_talla, t.tallas FROM Productos p INNER JOIN Categoria ca ON ca.id = p.idCategoria INNER JOIN Talla t ON t.id = p.idTalla;
