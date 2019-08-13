SHOW DATABASES;
CREATE DATABASE bts_intership;
SHOW DATABASES;
USE bts_intership;

CREATE TABLE students (first_name VARCHAR(120), last_name VARCHAR(120),
grade_1 TINYINT(2) UNSIGNED, grade_2 TINYINT(2) UNSIGNED, grade_3 TINYINT(2) UNSIGNED,
average DECIMAL(2,2));

INSERT INTO students VALUES("Juan","Perez",8,8,9,0),
("Apu","Nahasapimapeti",7,8,9,0);

INSERT INTO students VALUES
("Emmanuel", "Villalobos Arronte",7,7,7,0),
("pepe","",8,5,6,0),("Juan","Perez",6,4,5,0);

UPDATE students SET last_name = null WHERE first_name = "pepe";

SELECT UCASE(first_name) FROM students;

SELECT first_name, last_name, grade_1, grade_2, grade_3,
(grade_1+grade_2+grade_3)/3 AS 'average' FROM students;

ALTER TABLE students DROP COLUMN average;

DESCRIBE students;

SELECT AVG(grade_1) FROM students;

SELECT COUNT(*) FROM students;

--mal
SELECT first_name, last_name, grade_1, grade_2, grade_3, (grade_1+grade_2+grade_3)/3 AS 'average'
FROM students HAVING 'average' > 5.999;

--bien
SELECT first_name, last_name, grade_1, grade_2, grade_3, (grade_1+grade_2+grade_3)/3 AS average
FROM students HAVING average > 5.999;

SELECT first_name, last_name, grade_1, grade_2, grade_3, (grade_1+grade_2+grade_3)/3 AS average
FROM students HAVING average > 5.999 AND average < 8;

--para encontrar nulos
SELECT last_name FROM students WHERE last_name IS NULL;

SELECT last_name FROM students WHERE last_name IS NOT NULL;

ALTER TABLE students ADD COLUMN id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE students DROP COLUMN id;

ALTER TABLE students ADD COLUMN id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT FIRST;

--copiar el archivo a ruta C:\Program Files\MySQL\MySQL Server 8.0\bin\
\. studentsTable.sql
