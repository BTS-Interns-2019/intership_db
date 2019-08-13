MariaDB [bts_intership]> SELECT * FROM students
    -> ;
+----+------------+--------------------+---------+---------+---------+
| id | first_name | last_name          | grade_1 | grade_2 | grade_3 |
+----+------------+--------------------+---------+---------+---------+
|  1 | Juan       | Perez              |       8 |       8 |       9 |
|  2 | Apu        | Nahasapimapeti     |       7 |       8 |       9 |
|  3 | Emmanuel   | Villalobos Arronte |       7 |       7 |       7 |
|  4 | pepe       |                    |       8 |       5 |       6 |
|  5 | Juan       | Perez              |       6 |       4 |       5 |
+----+------------+--------------------+---------+---------+---------+
5 rows in set (0.020 sec)

MariaDB [bts_intership]> UPDATE students SET last_name = 'Hernandez' WHERE first_name = 'pepe';
Query OK, 1 row affected (0.123 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bts_intership]> SELECT * FROM students;
+----+------------+--------------------+---------+---------+---------+
| id | first_name | last_name          | grade_1 | grade_2 | grade_3 |
+----+------------+--------------------+---------+---------+---------+
|  1 | Juan       | Perez              |       8 |       8 |       9 |
|  2 | Apu        | Nahasapimapeti     |       7 |       8 |       9 |
|  3 | Emmanuel   | Villalobos Arronte |       7 |       7 |       7 |
|  4 | pepe       | Hernandez          |       8 |       5 |       6 |
|  5 | Juan       | Perez              |       6 |       4 |       5 |
+----+------------+--------------------+---------+---------+---------+
5 rows in set (0.000 sec)

MariaDB [bts_intership]> UPDATE students SET grade_1 = '10' WHERE first_name = 'Juan';
Query OK, 2 rows affected (0.082 sec)
Rows matched: 2  Changed: 2  Warnings: 0

MariaDB [bts_intership]> SELECT * FROM students
    -> ;
+----+------------+--------------------+---------+---------+---------+
| id | first_name | last_name          | grade_1 | grade_2 | grade_3 |
+----+------------+--------------------+---------+---------+---------+
|  1 | Juan       | Perez              |      10 |       8 |       9 |
|  2 | Apu        | Nahasapimapeti     |       7 |       8 |       9 |
|  3 | Emmanuel   | Villalobos Arronte |       7 |       7 |       7 |
|  4 | pepe       | Hernandez          |       8 |       5 |       6 |
|  5 | Juan       | Perez              |      10 |       4 |       5 |
+----+------------+--------------------+---------+---------+---------+
5 rows in set (0.000 sec)

MariaDB [bts_intership]> DELETE FROM students WHERE first_name = 'pepe';
Query OK, 1 row affected (0.191 sec)

MariaDB [bts_intership]> SELECT * FROM students;
+----+------------+--------------------+---------+---------+---------+
| id | first_name | last_name          | grade_1 | grade_2 | grade_3 |
+----+------------+--------------------+---------+---------+---------+
|  1 | Juan       | Perez              |      10 |       8 |       9 |
|  2 | Apu        | Nahasapimapeti     |       7 |       8 |       9 |
|  3 | Emmanuel   | Villalobos Arronte |       7 |       7 |       7 |
|  5 | Juan       | Perez              |      10 |       4 |       5 |
+----+------------+--------------------+---------+---------+---------+
4 rows in set (0.000 sec)
