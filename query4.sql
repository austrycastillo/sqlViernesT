/*DDL-> lenguaje de definición de datos
create, drop, alter
Sintaxis del alter: ALTER TABLE ___ OPERACIÓN
(add , drop, rename, change, modify )
*/
show databases;
use laboratorio;
show tables;
describe articulos;
describe clientes;
describe facturas;
##agregar columnas
alter table articulos add column nuevaColumna varchar(30);
alter table articulos add column nueva2Columna int first;
alter table articulos add column nueva3Columna int after precio;
alter table articulos add nueva4Columna double;
alter table articulos drop column nueva4Columna;
alter table articulos drop column nueva3Columna,drop column nueva2Columna;
alter table articulos drop nuevaColumna;
alter table articulos change precio pagos double;
alter table articulos modify pagos float;
alter table articulos rename productos;
describe productos;



