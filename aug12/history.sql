CREATE database students;
USE students;
CREATE TABLE students(first_name VARCHAR(120),last_name VARCHAR(120),grade1 TINYINT, grade2 TINYINT,grade3 TINYINT,average DECIMAL(2,2));
INSERT INTO students VALUES("Juan","Perez",8,8,9,0.00);
INSERT INTO students VALUES("Apu","Nahasapimapeti",7,8,9,0.00);
INSERT INTO students VALUES("Emmanuel","Villalobos Arronte",7,7,7,0.00);
INSERT INTO students VALUES("pepe",,8,5,6,0.00);
INSERT INTO students VALUES("Juan","Perez",6,4,5,0.00);
SELECT *, ((grade1 + grade2 + grade3) /3) AS bonito FROM students
ALTER TABLE students DROP average
SELECT *, ((grade1 + grade2 + grade3) /3) AS average FROM students HAVING average > 5.9999;
INSERT INTO students VALUES("Erick","Vazquez",10,10,10);
SELECT *, ((grade1 + grade2 + grade3) / 3) AS promedio FROM students WHERE first_name="Erick";