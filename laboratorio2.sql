/*LABORATORIO 2*/
 #a- artículos con precio mayor a 100
 USE laboratorio;
 show tables;
 select *from articulos WHERE precio >50;
#b- artículos con precio entre 20 y 40 (usar < y >)
select *from articulos where precio > 20 and precio < 50;
 # c- artículos con precio entre 40 y 60 (usar BETWEEN)
  select *from articulos where precio between 30 and 50;
 #d- artículos con precio = 20 y stock mayor a 30
 select *from articulos where precio = 42.7 and precio < 50;
#e- artículos con precio (12,20,30) no usar IN
select *from articulos where precio = 50.8 or precio = 84.5 
	or precio = 30;
#f- artículos con precio (12,20,30) usar el IN
select *from articulos where precio in(50.8,84.5,30);
/* g- artículos cuyo precio no sea (12,20,30)*/
select *from articulos where precio not in(50.8,84.5,30);
/*
3- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precios 
iguales deben quedar
ordenados por nombre.*/
select *from articulos;
insert into articulos values (6,'baño de crema',50.8,10);
select *from articulos order by precio desc,nombre asc;
/*4- Listar todos los artículos incluyendo una columna denominada precio con IVA, 
la cual deberá tener el monto
con el iva del producto.*/
select *, (precio * 1.21) as 'precio con IVA' 
	from articulos;
/*5- Listar todos los artículos incluyendo una columna denominada 
“cantidad de cuotas” y otra “valor de cuota”, la
cantidad es fija y es 3, el valor de cuota corresponde a 1/3 del monto con 
un 5% de inter*/
select *,3 as'cantidad de cuotas', 
	(precio/3)*1.05 as 'valor de cuota' from articulos;
/**************/
select *from clientes;
select *from clientes where apellido like '%a%'; #contiene
select *from clientes where apellido like '%a%'; #contiene
select *from clientes where nombre like 'a%';#inicia con ..
select *from clientes where nombre like '%a';#termina con  ..