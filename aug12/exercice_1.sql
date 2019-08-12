SHOW DATABASES;
CREATE DATABASE bts_intership;
SHOW DATABASES;
USE bts_intership;

CREATE TABLE students (first_name VARCHAR(120), last_name VARCHAR(120),
grade_1 TINYINT(2), grade_2 TINYINT(2), grade_3 TINYINT(2),
average DECIMAL(2,2));

INSERT INTO students VALUES("Juan","Perez",8,8,9,0),
("Apu","Nahasapimapeti",7,8,9,0);

INSERT INTO students VALUES
("Emmanuel", "Villalobos Arronte",7,7,7,0),
("pepe","",8,5,6,0),("Juan","Perez",6,4,5,0);

UPDATE students SET last_name = null WHERE first_name = "pepe";