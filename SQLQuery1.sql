create database ejercicio2

use ejercicio2

create table estudiantes (

	id_estudiante varchar(5) primary key,
	nombre int not null,
	apellido varchar(20) not null,
	correo varchar(20) unique,
	fecha_nacimiento varchar(10) not null,
	telefono int check (telefono > 0),
	edad int default 18 check( edad >= 18),

);

alter table estudiantes

	drop constraint PK__estudian__E0B2763CE9596492

alter table matriculas

	drop constraint FK__matricula__id_es__45F365D3

alter table estudiantes 

	alter column id_estudiante int not null

alter table estudiantes

	add constraint PK_estudiante primary key (id_estudiante)

alter table estudiantes

	alter column nombre varchar(20)

alter table estudiantes

	alter column fecha_nacimiento date

alter table estudiantes

	drop constraint CK__estudiante__edad__403A8C7D

alter table estudiantes

	drop constraint DF__estudiante__edad__3F466844

alter table estudiantes

	drop constraint CK__estudiant__telef__3E52440B

alter table estudiantes

	alter column telefono bigint

alter table estudiantes

	add constraint CHECK_telefono CHECK ( telefono > 0 )
	
create table cursos (
	
	id_curso varchar(3) primary key,
	titulo_curso char(10) not null,
	creditos char(2) check ( creditos > 0 ),
	descripcion varchar(15)

);

alter table cursos

	drop constraint PK__cursos__5D3F75027E74E146

alter table matriculas

	drop constraint FK__matricula__id_cu__46E78A0C

alter table cursos

	alter column id_curso int not null

alter table cursos

	add constraint PK_curso primary key (id_curso)

alter table cursos

	drop constraint CK__cursos__creditos__4316F928

alter table cursos

	alter column creditos int

alter table cursos

	add constraint CHECK_curso CHECK ( creditos > 0 )

alter table cursos

	alter column titulo_curso varchar(30)

alter table cursos
	
	alter column descripcion varchar(50)

create table matriculas (

	id_matricula int primary key,
	id_estudiante varchar(5) not null,
	id_curso varchar(3) not null,
	fecha_matricula varchar(8) not null,

	foreign key (id_estudiante) references estudiantes(id_estudiante),
	foreign key (id_curso) references cursos(id_curso)

);

alter table matriculas

	alter column id_estudiante int not null

alter table matriculas

	alter column id_curso int not null

alter table matriculas

	alter column fecha_matricula date not null

alter table matriculas

	add constraint FK_estudiante foreign key (id_estudiante) references estudiantes(id_estudiante)

alter table matriculas

	add constraint FK_cursos foreign key (id_curso) references cursos(id_curso)

insert into estudiantes values( 1, 'Ana', 'Perez', 'ana.perez@gmail.com', '2000-05-12', 3001234567 , 17 )

select *

from estudiantes

insert into cursos values ( 101 , 'Base de datos relacionales' , 4 , 'Curso de fundamentos' )

select *

from cursos

insert into matriculas values ( 1 , 1 , 101 , '2025-08-01' )

select *

from matriculas