/*
1- Agregar la relación (FK) entre la tabla Facturas y la tabla Clientes.*/
describe productos;
describe facturas;
describe clientes;
alter table facturas drop clienteId;
alter table facturas add clienteId int;
alter table facturas add constraint x foreign key(clienteId) references clientes(clienteId);
/*2- Agregar la relación (FK) entre la tabla Facturas y la tabla Articulos.*/
/*alter table facturas drop foreign key x;
alter table facturas add constraint y foreign key(articuloId) references productos(articuloId);*/
/*3- Generar un error de FK en la tabla Facturas.*/
/*4- Agregar la columna CPostal a la tabla Clientes.*/
alter table clientes add CPostal int;
/*5- Eliminar la columna CPostal de la tabla Clientes.
*/
alter table clientes drop Cpostal;