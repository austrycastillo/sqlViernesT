/*DML: SELECT*/
use laboratorio;
select *from clientes;
select nombre from clientes;
select nombre, apellido from clientes;
select clienteId as 'ID DE CLIENTE' from clientes;
select *from clientes order by apellido;
select *from clientes order by apellido desc;
select *from clientes limit 3;
select *from clientes limit 2 offset 2;
select cuit from clientes;
select cuit+100/2 as CALCULO from clientes;
/*FUNCIONES: SUM,AVG, ROUND, CONCAT, UPPER, LOWER, SUBSTRING*/
select upper(nombre) from clientes;#mayusculas
select lower(nombre) from clientes;#minusculas
select sum(clienteId)from clientes;#sumar
select avg(clienteId)from clientes;#promedio
select *from facturas;
select round(monto) from facturas;
select floor(monto) from facturas;
select ceil(monto) from facturas;
select concat(letra,numero) as DATOS from facturas;
select concat(letra,' - El número: ',numero) as DATOS from facturas;
select *from clientes;
select substring(direccion,2,4) from clientes;
select substring(nombre,1,1) from clientes;
/*WHERE*/
select *from clientes where cuit = 852;/* < > <= >= <>*/
select *from clientes where cuit = 123;
select *from clientes where clienteId > 2;
select *from clientes where nombre <> 'Yamila';
select *from clientes where nombre <> 'Yamila' AND nombre <> 'Ana';#OR AND
select *from clientes where clienteId between 2 and 4;#not between
select *from facturas;
select *from facturas where articuloId in(52,45,55);#not in
select *from clientes;
select *from clientes where clienteId = (
	select nombre from clientes where nombre = 'Nicolas');
    
    
    
    
/***************PRACTICA TIENDA INFORMATICA************************/
create database tiendaInformatica;
show databases;
use tiendaInformatica;
create table fabricantes (
	Codigo int auto_increment,
    Nombre varchar(100),
    primary key(Codigo)
);
describe fabricantes;
create table articulos(
	Codigo int,
    Nombre varchar(100),
    Precio int,
    Fabricante int,
    primary key(Codigo),
    foreign key(Fabricante) references fabricantes(Codigo)
);
insert into fabricantes (Nombre) values 
	("uno"),("dos"),("tres"),("cuatro"),("cinco");
select *from fabricantes;
insert into articulos (Codigo,Nombre,Precio,Fabricante) values
	(12,"teclado",250,2),
    (34,"monitor",810,1),
    (56,"mouse",32,5),
    (78,"parlante",380,4),
    (90,"notebook",8425,1),
    (98,"auriculares",20,5);
select *from articulos;





