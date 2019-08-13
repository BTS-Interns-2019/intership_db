CREATE DATABASE bts_intership; --crea la base de datos
USE bts_intership;	--te coloca en la nueva base de datos
CREATE TABLE students(	--crea la tabla llamada students
first_name VARCHAR(120),
    last_name VARCHAR(120),
    grade_1 TINYINT(2)UNSIGNED,
    grade_2 TINYINT(2)UNSIGNED,
    grade_3 TINYINT(2)UNSIGNED,
    average DECIMAL(2,2)
	);

--mostrar tabla
SHOW TABLES;

DESCRIBE students;

--insertar registros

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 8, 8, 9, 0);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Apu', 'Nahasapimapeti', 7, 8, 9, 0);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0);

INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Pepe', '', 8, 5, 6, 0);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 6, 4, 5, 0);

--se insertó un dato erroneo en el registro Pepe, se procede a actualizar

UPDATE students SET last_name=null WHERE first_name='Pepe';

--mostrar la tabla con los registros

SELECT * FROM students;

--calculamos el promedio de cada registro

 SELECT *, ((grade_1 + grade_2 + grade_3)/3) AS promedio FROM students;

--eliminamos la columna average

ALTER TABLE students DROP average;

--contamos el numero de registros de la tabla

SELECT COUNT(*) FROM students;

--mostramos solo los promedios aprobatorios

SELECT *, ((grade_1 + grade_2 + grade_3)/3) AS average FROM students HAVING average > 5.9999;

--mostramos los registros que contengan algun valor null

SELECT * FROM students WHERE last_name IS NULL;

--borramos todos los registros de la tabla;

TRUNCATE students;

--creamos columna id para la tabla

ALTER TABLE students ADD COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL FIRST;

--importamos un archivo .sql

--mysql -u root -p bts_intership < C:\Users\edgar\Documents\EdgarGIT\DB-sql\intership_db\studentTables.sql

