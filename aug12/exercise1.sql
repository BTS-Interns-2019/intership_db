mysql -uroot;
CREATE DATABASE bts_internship;
USE bts_intership;
CREATE TABLE students ( first_name VARCHAR(120), last_name VARCHAR(120));
describe students;
INSERT INTO students VALUES ("Juan", "Perez", 8, 8, 9, 0),("Apu", "Nahasapimapeti", 7, 8 ,9, 0), ("Emmanuel", "Villalobos Arronte", 7, 7, 7, 0), ("Pepe", NULL, 8, 5, 6, 0), ("Juan", "Perez", 6, 4, 5, 0);
SELECT *, ((grade_1, grade_2, grade_3)/3) AS 'bonito' FROM students;
ALTER TABLE students DROP average;
SELECT *, ((grade_1 + grade_2 + grade_3)/3) AS 'average' FROM students HAVING average >= 7 AND average <= 8;
SELECT * FROM students WHERE last_name IS null;
ALTER TABLE students ADD COLUMN id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT FIRST;