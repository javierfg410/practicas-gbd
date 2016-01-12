--1
SELECT nombre,apellido1,apellido2 FROM alumnos
WHERE edad<25;
--2
SELECT apellido1 || ' ' || apellido2 || ', ' || nombre  as "Nombre Completo"
FROM alumnos
order by apellido1,apellido2,nombre;

--3
SELECT nombre,apellido1,apellido2
FROM ALUMNOS
WHERE telefono IS NULL;

--4
SELECT nombre,apellido1,apellido2
FROM ALUMNOS
WHERE apellido1='Sánchez' AND apellido2='Sánchez';

--5
SELECT nombre,apellido1,apellido2
FROM ALUMNOS
WHERE apellido1=apellido2;

--6
SELECT nombre,apellido1,apellido2,telefono
FROM ALUMNOS
WHERE telefono LIKE '6%' OR telefono LIKE '7%';

--7
SELECT nombre,apellido1,apellido2,telefono,edad
FROM ALUMNOS
WHERE telefono LIKE '%5%5%' or edad>50;

SELECT nombre,apellido1,apellido2,telefono,edad
FROM ALUMNOS
WHERE telefono LIKE '%5%5%' and edad>50;

--9
ALTER TABLE alumnos ADD(telefono_fijo CHAR(9), telefono_movil CHAR(9));
UPDATE alumnos
SET telefono_fijo=telefono
WHERE telefono LIKE '9%';
UPDATE alumnos
SET telefono_movil=telefono
WHERE telefono LIKE '6%' or telefono like '7%';
alter table alumnos drop (telefono);
