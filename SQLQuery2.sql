create database ejercicioXD

use ejercicioXD

create table estudiantes (

	codigo_estudiante int primary key,
	nombre varchar(30) not null,
	carrera varchar(30) not null,
	correo varchar(30) unique not null

);

create table libros (

	codigo_libro int primary key,
	titulo varchar(30) not null,
	autor varchar(30) not null,
	editorial varchar(30) unique not null,
	año_piblicacion date not null

);

create table prestamos (

	codigo_prestamo int primary key,
	fecha_prestamo date not null,
	fecha_devolucion date not null,
	estado varchar(10) not null,
	codigo_estudiante int not null,

	constraint FK_Prestamos foreign key (codigo_estudiante) references estudiantes(codigo_estudiante)

);

create table detalles_prestamo (

	codigo_prestamo int not null,
	codigo_libro int not null

	constraint FK_Det_Prestamos foreign key (codigo_prestamo) references prestamos(codigo_prestamo),
	constraint FK_Det_Libros foreign key (codigo_libro) references libros(codigo_libro)

);

