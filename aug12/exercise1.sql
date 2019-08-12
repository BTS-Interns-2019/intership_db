CREATE DATABASE bts_intership;
USE bts_intership;
CREATE TABLE students(
    first_name VARCHAR(140),
    last_name VARCHAR(140),
    grade_1 TINYINT,
    grade_2 TINYINT,
    grade_3 TINYINT,
    average DECIMAL(2,2)
);
INSERT INTO students VALUES(
    'Juan',
    'Perez',
    8,
    8,
    9,
    0
);
INSERT INTO students VALUES(
    'Apu',
    'Nahasapimapeti',
    7,
    8,
    9,
    0
);
INSERT INTO students VALUES(
    'Emmanuel',
    'Villalobos Arronte',
    7,
    7,
    7,
    0
);
INSERT INTO students VALUES(
    'pepe',
    NULL,
    8,
    5,
    6,
    0
);
INSERT INTO students VALUES(
    'Juan',
    'Perez',
    6,
    4,
    5,
    0
);

SELECT *,(grade_1+grade_2+grade_3)/3 AS average FROM students;--Crea un promedio de las columnas
ALTER TABLE students DROP average;--Borra columna average
SELECT *,(grade_1+grade_2+grade_3)/3 AS average FROM students HAVING average>5;--Crea slecciona las columnas con promedio mayor a 5
SELECT * FROM students WHERE last_name IS NULL;--Busca apellidos nulls

TRUNCATE students;--Borra todo de la tabla
/*Inserta una nueva columna primaria*/
ALTER TABLE students ADD id INT;
ALTER TABLE students ADD PRIMARY KEY(id);
ALTER TABLE students MODIFY id INT NOT NULL AUTO_INCREMENT;
