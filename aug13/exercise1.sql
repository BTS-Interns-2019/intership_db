MariaDB [(none)]> USE  bts_intership
Database changed
MariaDB [bts_intership]>
MariaDB [bts_intership]>
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
5 rows in set (0.000 sec)

MariaDB [bts_intership]> UPDATE students
    -> SET last_name = 'Lira'
    -> WHERE first_name = 'pepe';
Query OK, 1 row affected (0.180 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bts_intership]> SELECT * FROM students;
+----+------------+--------------------+---------+---------+---------+
| id | first_name | last_name          | grade_1 | grade_2 | grade_3 |
+----+------------+--------------------+---------+---------+---------+
|  1 | Juan       | Perez              |       8 |       8 |       9 |
|  2 | Apu        | Nahasapimapeti     |       7 |       8 |       9 |
|  3 | Emmanuel   | Villalobos Arronte |       7 |       7 |       7 |
|  4 | pepe       | Lira               |       8 |       5 |       6 |
|  5 | Juan       | Perez              |       6 |       4 |       5 |
+----+------------+--------------------+---------+---------+---------+
5 rows in set (0.000 sec)

MariaDB [bts_intership]> UPDATE students
    -> SET last_name = 'Campos'
    -> WHERE first_name = 'Emmanuel';
Query OK, 1 row affected (0.133 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [bts_intership]> SELECT * FROM students;
+----+------------+----------------+---------+---------+---------+
| id | first_name | last_name      | grade_1 | grade_2 | grade_3 |
+----+------------+----------------+---------+---------+---------+
|  1 | Juan       | Perez          |       8 |       8 |       9 |
|  2 | Apu        | Nahasapimapeti |       7 |       8 |       9 |
|  3 | Emmanuel   | Campos         |       7 |       7 |       7 |
|  4 | pepe       | Lira           |       8 |       5 |       6 |
|  5 | Juan       | Perez          |       6 |       4 |       5 |
+----+------------+----------------+---------+---------+---------+
5 rows in set (0.000 sec)

MariaDB [bts_intership]> DELETE students WHERE last_name = 'Nahasapimapeti';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'WHERE last_name = 'Nahasapimapeti'' at line 1
MariaDB [bts_intership]> DELETE FROM  students WHERE last_name='Nahasapimapeti'
    -> ;
Query OK, 1 row affected (0.138 sec)

MariaDB [bts_intership]> SELECT * FROM students;
+----+------------+-----------+---------+---------+---------+
| id | first_name | last_name | grade_1 | grade_2 | grade_3 |
+----+------------+-----------+---------+---------+---------+
|  1 | Juan       | Perez     |       8 |       8 |       9 |
|  3 | Emmanuel   | Campos    |       7 |       7 |       7 |
|  4 | pepe       | Lira      |       8 |       5 |       6 |
|  5 | Juan       | Perez     |       6 |       4 |       5 |
+----+------------+-----------+---------+---------+---------+
4 rows in set (0.000 sec)