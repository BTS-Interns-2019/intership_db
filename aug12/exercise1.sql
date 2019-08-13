CREATE DATABASE bts_internship;
USE bts_internship;
CREATE TABLE students (first_name VARCHAR(50), last_name VARCHAR(50), grade_1 TINYINT(2) unsigned, grade_2 TINYINT(2) unsigned, grade_3 TINYINT(2) unsigned, average DECIMAL(5,3) unsigned);
show table status like 'students';
select * from students;
describe students;
INSERT INTO students VALUES('Juan', 'Perez', 8,8,9,0);
INSERT INTO students VALUES('Apu', 'Nahasapimapeti', 7,8,9,0);
INSERT INTO students VALUES('Emmanuel', 'Villalobos Arronte', 7,7,7,0);
INSERT INTO students VALUES('Pepe', '', 8,5,6,0);
INSERT INTO students VALUES('Juan', 'Perez', 6,4,5,0);
describe students;
SELECT * FROM students;
SELECT first_name, AVG(average)
    -> FROM students
    -> GROUP BY first_name;
SELECT *,((grade_1 + grade_2 + grade_3)/3) FROM students;
SELECT *,((grade_1 + grade_2 + grade_3)/3) AS promedio FROM students;
ALTER TABLE students DROP COLUMN average;
SELECT * FROM students;
SELECT AVG(grade_1) FROM students;
SELECT COUNT(*) FROM students;
SELECT *,((grade_1 + grade_2 + grade_3)/3) AS promedio FROM students;
SELECT *,((grade_1 + grade_2 + grade_3)/3) AS average FROM students;
SELECT *,((grade_1 + grade_2 + grade_3)/3) AS average FROM students HAVING average >5.9999;
SELECT *,((grade_1 + grade_2 + grade_3)/3) AS average FROM students HAVING average <8;
SELECT *,((grade_1 + grade_2 + grade_3)/3) AS average FROM students HAVING average >5.9999 AND average <8;
SELECT * FROM students WHERE last_name IS NOT NULL;
ALTER TABLE students ADD COLUMN id INT unsigned PRIMARY KEY AUTO_INCREMENT;

mysql -u root -p bts_internship <C:\xampp\studentsTable.sql