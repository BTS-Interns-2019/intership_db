CREATE DATABASE bts_internship;
USE bts_internship;
CREATE TABLE students (
    first_name VARCHAR(120),
    last_name VARCHAR(120),
    grade_1 TINYINT(2) UNSIGNED,
    grade_2 TINYINT(2) UNSIGNED,
    grade_3 TINYINT(2) UNSIGNED,
    average DECIMAL(2,2)
);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES
    ('Juan','Perez',8,8,9,0),
    ('Apu','Nahasapimapeti',7,8,9,0),
    ('Emmanuel','Villalobos Arronte',7,7,7,0),
    ('Pepe',NULL,8,5,6,0),
    ('Juan','Perez',8,8,9,0);
     /**
     Borrar columna
     **/
ALTER TABLE students DROP COLUMN average;
ALTER TABLE students ADD COLUMN id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY FIRST;