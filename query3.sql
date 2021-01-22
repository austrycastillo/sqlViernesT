show databases;
use tiendainformatica;
show tables;
describe articulos;
describe fabricantes;
select *from articulos;
select *from fabricantes;
/*UPDATE: DML
UPDATE nombre_tabla SET nombre_campo=valor
*/
update articulos set precio=100 where codigo=56;
update articulos set precio=precio*1.21,  nombre='mouse inalambrico'
	where codigo=56;
/*DELETE: DML
DELETE FROM nombre_tabla*/
delete from articulos where Codigo=98;
create table pruebas(
	id int auto_increment,
    nombre varchar(30),
    primary key(id)
);
insert into pruebas (nombre) values("Juan"),("Ana"),("Fulano");
select *from pruebas;
delete from pruebas;
truncate table pruebas;
/*INNER JOIN*/
select *from fabricantes inner join articulos 
	on fabricantes.codigo=articulos.fabricante;
select *from fabricantes,articulos 
	where fabricantes.codigo=articulos.fabricante;
select articulos.nombre as 'NOMBRE ARTICULOS',
	articulos.precio,
	fabricantes.nombre as 'NOMBRE FABRICANTE'
    from articulos inner join fabricantes
    on articulos.fabricante = fabricantes.codigo;
    
/*INNER JOIN CORTO CON ALIAS*/
select a.nombre as 'NOMBRE ARTICULOS',
	a.precio,
	f.nombre as 'NOMBRE FABRICANTE'
    from articulos a inner join fabricantes f
    on a.fabricante = f.codigo;

/*CASE : when then*/
select *from articulos;
select nombre,precio,fabricante,
	case
			when fabricante < 2 then 'FABRICANTE REPETIDO'
            when fabricante = 2 then 'FABRICANTE DOS'
            else 'UN SOLO FABRICANTE'
    end as INFO
    from articulos;





