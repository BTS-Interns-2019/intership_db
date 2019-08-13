CREATE DATABASE bts_internship;
USE bts_internship;
CREATE TABLE students(
    first_name VARCHAR(120),
    last_name VARCHAR(120),
    grade_1 TINYINT(2) UNSIGNED,
    grade_2 TINYINT(2) UNSIGNED,
    grade_3 TINYINT(2) UNSIGNED,
    average DECIMAL(2,2) UNSIGNED
);

INSERT INTO students (first_name, last_name, grade_1, grade_2, grade_3, average) VALUES
    ('Juan', 'Perez', 8, 8, 9, 0),
    ('Apu', 'Nahasapimapeti', 7, 8, 9, 0),
    ('Emmanuel', 'Villalobos Arronte', 7, 7, 7, 0),
    ('pepe', null, 8, 5, 6, 0),
    ('Juan', 'Perez', 6, 4, 5, 0)
;

SELECT first_name, last_name, grade_1, grade_2, grade_3, (grade_1 + grade_2 + grade_3 / 3) as average from students;

ALTER TABLE students DROP COLUMN average;

TRUNCATE students;
ALTER TABLE students ADD COLUMN id INTEGER UNSIGNED PRIMARY KEY AUTO_INCREMENT;

-- exit

-- mysql -p -u root bts_internship < studentsTable.sql
