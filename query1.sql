/*
DDL: create, alter, drop
DML: insert, update, delete, select CRUD
*/
show databases;/*ver bd*/
create database miPrimeraBase;/*crear bd*/
drop database miPrimeraBase;/*eliminar bd*/
use miPrimeraBase;/*usar bd*/
create table usuarios(/*crear tabla*/
	dni int,
    nombre varchar(30),
    correo varchar(50),
    edad tinyint,
    direccion varchar(50)
);
describe usuarios;
create table productos(
	id int auto_increment,
    nombre varchar(40) not null,
    descripcion varchar(100) default 'es lo más',
    primary key(id)
);
describe productos;
SHOW TABLES;/*muestra las tablas*/
insert into usuarios (
	dni,nombre,correo,edad,direccion
    ) values (123,"Juan","j@web.com",20,"Neuquen");
insert into usuarios values(
	456,"Ana","aa@web.com",50,"Mendoza"
);
insert into usuarios values
	(789,"Fulano","f@web.com",85,"Buenos Aires"),
	(987,"Cleopatra","c@web.com",3,"Cordoba"),
    (654,"Amalia","a@web.com",15,"Buenos Aires");
insert into usuarios (dni,nombre) values(111,"Soe");
select *from usuarios;






