/*1- Eliminar si existe la base de datos Laboratorio*/
drop database Laboratorio;
/*2- Crear la base de datos Laboratorio.*/
create database Laboratorio;
/*usar la bd*/
use Laboratorio;
/*crear tablas*/
create table articulos (
	articuloId integer,
    nombre varchar(50),
    precio double,
    stock integer,
    primary key(articuloId)
);
describe articulos;
show tables;
drop table articulos;
create table facturas(
	letra char,
    numero integer,
    clienteId integer,
    articuloId integer,
    fecha date,
    monto double,
    primary key(letra,numero)
);
describe facturas;
create table clientes(
	clienteId integer,
    nombre varchar(50),
    apellido varchar(50),
    cuit char(16),
    direccion varchar(50),
    comentarios varchar(50),
    primary key(clienteId)
);
describe clientes;
show tables;
insert into articulos values
	(1,"shampoo",24.5,12),
    (2,"acondicionador",50.8,100),
    (3,"crema",42.7,12),
    (4,"perfume",84.5,30),
    (5,"serum",46.3,50);
select *from articulos;
insert into facturas values
	("a",12,1,52,"2020-01-08",24.5);
select *from facturas;


