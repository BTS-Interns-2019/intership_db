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
