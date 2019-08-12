mysql -u root -p
Create DATABASE bts_internship;
USE bts_internship;
CREATE TABLE students ( first_name VARCHAR(120), last_name VARCHAR(120), grade_1 TINYINT(2), grade_2 TINYINT(2), grade_3 TINYINT(2), average DECIMAL(2,2));
describe students;
INSERT INTO students VALUES ("Juan", "Perez", 8, 8, 9, 0),("Apu", "Nahasapimapeti", 7, 8 ,9, 0), ("Emmanuel", "Villalobos Arronte", 7, 7, 7, 0), ("Pepe", NULL, 8, 5, 6, 0), ("Juan", "Perez", 6, 4, 5, 0);
SELECT *, ((grade_1 + grade_2 + grade_3)/3) AS 'bonito' FROM students;
ALTER TABLE students DROP average;
SELECT * FROM students WHERE last_name IS NULL;
ALTER TABLE students ADD COLUMN id int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT FIRST;
