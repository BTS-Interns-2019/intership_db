CREATE DATABASE bts_internship;
USE bts_internship;
CREATE TABLE students (
    first_name VARCHAR (120),
    last_name VARCHAR (120),
    grade_1 TINYINT (2) UNSIGNED,
    grade_2 TINYINT (2) UNSIGNED,
    grade_3 TINYINT (2) UNSIGNED,
    average DECIMAL (2,2) UNSIGNED
);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 8, 8, 9, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Apu', 'Nahasapimapeti', 7, 8, 9, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Emmanuel', 'Villalobos Aronte', 7, 7, 7, 0);
INSERT INTO students (first_name, grade_1, grade_2, grade_3, average) VALUES ('pepe', 8, 5, 6, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 6, 4, 5, 0);

SELECT first_name, last_name, grade_1, grade_2, grade_3, ((grade_1 + grade_2 + grade_3) / 3) 'average' FROM students;

ALTER TABLE students DROP average;

ALTER TABLE students ADD id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT FIRST;