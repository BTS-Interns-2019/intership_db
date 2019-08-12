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