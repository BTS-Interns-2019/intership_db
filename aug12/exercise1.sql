CREATE DATABASE bts_internship; -- Create database
USE bts_internship; -- Move to the newly created database
-- Create a new students table
CREATE TABLE students (
  first_name VARCHAR(120),
  last_name VARCHAR(120),
  grade_1 TINYINT(2) UNSIGNED,
  grade_2 TINYINT(2) UNSIGNED,
  grade_3 TINYINT(2) UNSIGNED,
  average DECIMAL(2,2)
);

-- Insert values into table
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 8, 8, 9, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Apu', 'Nahasapimapeti', 7, 8, 9, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('pepe', NULL, 8, 5, 6, 0);
INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES ('Juan', 'Perez', 6, 4, 5, 0);

-- Get average between the grades for each row
SELECT *, (grade_1 + grade_2 + grade_3)/3 AS AVERAGE FROM students;
-- Drop average column
ALTER TABLE students DROP COLUMN average;
-- Add primary key column to table
ALTER TABLE students ADD COLUMN id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY FIRST;