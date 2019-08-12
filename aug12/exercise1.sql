CREATE DATABASE bts_internship; -- Create database
USE bts_internship; -- Move to the newly created database
CREATE TABLE students ( -- Create a new students table
  first_name VARCHAR(120),
  last_name VARCHAR(120),
  grade_1 TINYINT(2) UNSIGNED,
  grade_2 TINYINT(2) UNSIGNED,
  grade_3 TINYINT(2) UNSIGNED,
  average DECIMAL(2,2),
);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 8, 8, 9, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Apu', 'Nahasapimapeti', 7, 8, 9, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('pepe', NULL, 8, 5, 6, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 6, 4, 5, 0);