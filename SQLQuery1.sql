create database EstudianteAsignatura

use EstudianteAsignatura

create table Estudiantes(

	nombre varchar(20) not null,
	id_estudiante int not null,
	asignatura varchar(20) not null,
	nota decimal(2,1) not null,

	Constraint PK_id_estudiante Primary Key(id_estudiante, nombre)

);

insert into Estudiantes (nombre, id_estudiante, asignatura, nota ) values ('Juan', 1, 'Logica', 2.8)

insert into Estudiantes (nombre, id_estudiante, asignatura, nota ) values ('Maria', 2, 'Logica', 4.8)

insert into Estudiantes (nombre, id_estudiante, asignatura, nota ) values ('Juan', 3, 'Matematicas', 3.5)

insert into Estudiantes (nombre, id_estudiante, asignatura, nota ) values ('Maria', 4, 'Desarrollo', 2.5)

insert into Estudiantes (nombre, id_estudiante, asignatura, nota ) values ('Pedro', 5, 'Desarrollo', 4.2)

select distinct asignatura from Estudiantes as DiferentesAsignaturas

select all * from Estudiantes as Todos

select * from Estudiantes as TodasColumnas

select count(*) TotalRegistros from Estudiantes as CuantosEstudiantes

select count(distinct(nombre)) from Estudiantes as CuantosEstudiantesDifNom

select count(distinct(asignatura)) from Estudiantes

select top(2) * from Estudiantes

select nombre, AVG(nota) as PromedioNotaEstudiante from Estudiantes group by (nombre)

select asignatura, AVG(nota) as PromedioNotaAsignatura from Estudiantes group by (asignatura)

select *  from Estudiantes as Sobre3_8 where nota > 3.8;

select count(*) as CuantosLogica from Estudiantes where asignatura = 'logica';

select * from Estudiantes where Asignatura = 'Logica';

select max(nota) from Estudiantes as MayorNotaDesarrollo where asignatura = 'desarrollo' ;

select 
	asignatura as Asignatura,
	count(distinct id_estudiante) 'Numero de Estudiantes',
	avg(nota) as 'Promedio Materia',
	min(nota) as 'Nota Minima',
	max(nota) as 'Nota Maxima' 
	from Estudiantes group by(asignatura);