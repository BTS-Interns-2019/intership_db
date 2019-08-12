mysql> CREATE database students;
Query OK, 1 row affected (0.26 sec)
mysql> USE students;
Database changed
mysql> CREATE TABLE students(first_name VARCHAR(120),last_name VARCHAR(120),grade1 TINYINT, grade2 TINYINT,grade3 TINYINT,average DECIMAL(2,2));
Query OK, 0 rows affected (1.07 sec)