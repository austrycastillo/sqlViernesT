##FACULTAD
create database facultad;
use facultad;
create table facultad (
	codigo int,
    nombre varchar(100),
    primary key(codigo)
);
create table investigadores(
	dni varchar (8),
    nomApels varchar(255),
    facultad int,
    primary key(dni),
    foreign key(facultad) references facultad(codigo)
);
create table equipos(
	numSerie char(4),
    nombre varchar(100),
    facultad int,
    primary key(numSerie),
    foreign key(facultad) references facultad(codigo)
);
create table reserva (
	id int,
	dni varchar(8),
    numSerie char(4),
    comienzo datetime,
    fin datetime,
    primary key(id),
    foreign key(dni) references investigadores(dni),
    foreign key(numSerie) references equipos(numSerie)
);
show tables;
insert into facultad values
	(1,"Medicina"),
	(2,"Sistemas"),
    (3,"Derecho");
select *from facultad;
insert into investigadores values
	(123,"Nahuel Acevedo",3),
    (456,"Yamila Carlucci",2),
    (789,"Nicolas Di Silvestro",3),
    (987,"Ignacio Villarroel",3),
    (654,"José Vidaurre",3);
select *from investigadores;
insert into equipos values 
	("a1","Cocodrilos",3);
insert into equipos values 
	("b4","Leones",2),
    ("c8","Conejitos",3);
select *from equipos;
insert into reserva values
	(1,123,"a1","2018-04-01","2018-05-01");
select *from reserva;
delete from reserva;
insert into reserva values
	(3,789,"b4","2020-01-20","2020-02-05");
select *from reserva;
select r.dni,e.nombre 
	from reserva r inner join equipos e 
	on r.numSerie = e.numSerie;
select r.dni,e.nombre,f.nombre as "nombre facultad",i.nomApels as investigadores
	from reserva r inner join equipos e 
	on r.numSerie = e.numSerie inner join facultad f
    on f.codigo = e.facultad inner join investigadores i
    on i.facultad = f.codigo;

