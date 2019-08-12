mysql -uroot;
CREATE DATABASE bts_internship;
USE bts_intership;
CREATE TABLE students ( first_name VARCHAR(120), last_name VARCHAR(120), grade_1 TINYINT(2), grade_2 TINYINT(2), grade_3 TINYINT(2), average DECIMAL(2,2));
describe students;
