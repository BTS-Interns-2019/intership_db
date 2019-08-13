
--Ricardo Martín del Campo Loza

--Primera parte, Crear DB y tabla con sus columnas
CREATE DATABASE bts_intership;
SHOW DATABASES;
USE bts_intership;
CREATE TABLE students (
    first_name VARCHAR(120),
        last_name VARCHAR(120),
        grade_1 TINYINT(2),
        grade_2 TINYINT(2),
        grade_3 TINYINT(3),
        average DECIMAL(2,2)
    );
SHOW TABLES;
DESCRIBE students;

--Segunda parte, crear registros para la base de datos.

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average)
    VALUES('Juan', 'Perez', 8, 8, 9, 0);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average)
    VALUES('Apu', 'Nahasapimapeti', 7, 8, 9, 0);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average)
    VALUES('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0);

INSERT INTO students (first_name, grade_1, grade_2, grade_3, average)
    VALUES('pepe', 8, 5, 6, 0);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average)
    VALUES('Juan', 'Perez', 6, 4, 5, 0);

SELECT * FROM students;


--Calculando promedios, AVG solo saca el promedio de columnas, no de filas

SELECT *, (grade_1 + grade_2 + grade_3)/3 FROM students;

SELECT *, (grade_1 + grade_2 + grade_3)/3 AS average FROM students;


--Eliminar una columna
 ALTER TABLE students
    DROP average;

describe students;

SELECT *, (grade_1 + grade_2 + grade_3)/3 AS average FROM students;

--Hacer consulta con un allias, Cuando usas AS no creas un campo, por lo tanto no puedes usar WHERE y debes usar HAVING
SELECT *, (grade_1 + grade_2 + grade_3)/3 AS average FROM students HAVING average > 5.999;

SELECT *, (grade_1 + grade_2 + grade_3)/3 AS average FROM students HAVING average > 5.999 AND average < 8;


--Hacer consulta de un null, no puedes usar nombre = null por lo tanto debes usar IS NULL o IS NOT NULL

SELECT * FROM students WHERE last_name IS null;

SELECT * FROM students WHERE last_name IS NOT null;

--Vacía el contenido de la tabla
TRUNCATE students;

--Crear columna int, sin signo, primary key, autoincremental, not null, al inicio.

ALTER TABLE students ADD COLUMN id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL FIRST;

-- Importar archivo a db

mysql -p -u root bts_intership < C:\Users\ricar\OneDrive\Documentos\intership_db\studentsTable.sql
