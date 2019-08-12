create database bts_intership;
USE bts_intership;
create table students(first_name VARCHAR(100), last_name VARCHAR(100),grade_1 TINYINT(2), grade_2 TINYINT(2), grade_3 TINYINT(2),average DECIMAL(2,2));
insert into students values ('Juan','Perez',8,8,9,0);
insert into students values ('Apu','Nahasapimapeti',7,8,9,0);
insert into students values ('Emmanuel','Villalobos Arronte',7,7,7,0);
insert into students values ('pepe',null,8,5,6,0);
insert into students values ('Juan','Perez',6,4,5,0);
SELECT (grade_1 + grade_2 + grade_3)/3 from students;


