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
