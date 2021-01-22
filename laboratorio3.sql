/*
1- Insertar 5 clientes en la tabla clientes utilizando el insert into sin 
utilizar campos como parte de la sentencias, es decir, de la forma
simplificada.*/
use laboratorio;
show tables;
describe clientes;
select *from clientes;
insert into clientes values (6,"Filomena","Meno",853,'Alumini','es viernes!'),
	(7,"Cleopatra","Sandoval",111,'Salta','No se que escribir'),
    (8,"Fulano","de Tal",456,'Buenos Aires','pruebas'),
    (9,"Juan","Mendoza",365,'La Costa','Estoy estudiando'),
    (10,"Dario","Villaroel",112,'San Juan','es viernes!');

/*2- Actualizar el nombre del cliente 1 a José.*/
update clientes set nombre='José' where clienteid=1;
/*3- Actualizar el nombre apellido y cuit del cliente 3 a Pablo Fuentes 20-21053119-0.*/
update clientes set nombre='Pablo',apellido='Fuentes',cuit='20-21053119-0' 
	where clienteid=3;
/*4- Actualizar todos los comentarios NULL a ‘’.*/
update clientes set comentarios='null';
update clientes set comentarios='' where comentarios='null';
/*5- Eliminar los clientes con apellido Perez.*/
delete from clientes where apellido='Perez';
/*6- Eliminar los clientes con CUIT Terminan en 0.*/
delete from clientes where cuit like '%0';
/*7- Aumentar un 20% los precios de los artículos con precio menor igual a 50.*/
select *from articulos;
update articulos set precio=precio*1.20 where precio <50;
/*8- Aumentar un 15% los precios de los artículos con precio mayor a 50.*/
update articulos set precio=precio*1.15 where precio>50;
/*9- Bajar un 5% los precios de los artículos con precio mayor a 200.*/
update articulos set precio=precio*0.95 where precio >50;
/*10- Eliminar los artículos con stock menor a 0.*/
delete from articulos where stock<15;



