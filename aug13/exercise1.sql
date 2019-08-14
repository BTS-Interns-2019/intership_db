mysql> SELECT * FROM STUDENTS;
+----------+--------------------+--------+---------+----------+----+
| Name     | LastName           | GradeI | GradeII | GradeIII | ID |
+----------+--------------------+--------+---------+----------+----+
| Juan     | Perez              |      8 |       8 |        9 |  1 |
| Apu      | Nahasapimapeti     |      7 |       8 |        9 |  2 |
| Emmanuel | Villalobos Arronte |      7 |       7 |        7 |  3 |
| pepe     |                    |      8 |       5 |        6 |  4 |
| Juan     | Perez              |      6 |       4 |        5 |  5 |
+----------+--------------------+--------+---------+----------+----+
5 rows in set (0.00 sec)

mysql> UPDATE students SET Name = "Jose Luis" WHERE Name=pepe;
ERROR 1054 (42S22): Unknown column 'pepe' in 'where clause'
mysql> UPDATE students SET Name="Jose Luis" WHERE Name="pepe";
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM students;
+-----------+--------------------+--------+---------+----------+----+
| Name      | LastName           | GradeI | GradeII | GradeIII | ID |
+-----------+--------------------+--------+---------+----------+----+
| Juan      | Perez              |      8 |       8 |        9 |  1 |
| Apu       | Nahasapimapeti     |      7 |       8 |        9 |  2 |
| Emmanuel  | Villalobos Arronte |      7 |       7 |        7 |  3 |
| Jose Luis |                    |      8 |       5 |        6 |  4 |
| Juan      | Perez              |      6 |       4 |        5 |  5 |
+-----------+--------------------+--------+---------+----------+----+
5 rows in set (0.00 sec)

mysql> UPDATE students SET LastName='siuL oseJ' WHERE LastName='';
Query OK, 1 row affected (0.08 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM students;
+-----------+--------------------+--------+---------+----------+----+
| Name      | LastName           | GradeI | GradeII | GradeIII | ID |
+-----------+--------------------+--------+---------+----------+----+
| Juan      | Perez              |      8 |       8 |        9 |  1 |
| Apu       | Nahasapimapeti     |      7 |       8 |        9 |  2 |
| Emmanuel  | Villalobos Arronte |      7 |       7 |        7 |  3 |
| Jose Luis | siuL oseJ          |      8 |       5 |        6 |  4 |
| Juan      | Perez              |      6 |       4 |        5 |  5 |
+-----------+--------------------+--------+---------+----------+----+
5 rows in set (0.00 sec)

mysql> DELETE FROM students WHERE ID=5;                                 
Query OK, 1 row affected (0.12 sec)                                     
                                                                        
mysql> SELECT * FROM students;                                          
+-----------+--------------------+--------+---------+----------+----+   
| Name      | LastName           | GradeI | GradeII | GradeIII | ID |   
+-----------+--------------------+--------+---------+----------+----+   
| Juan      | Perez              |      8 |       8 |        9 |  1 |   
| Apu       | Nahasapimapeti     |      7 |       8 |        9 |  2 |   
| Emmanuel  | Villalobos Arronte |      7 |       7 |        7 |  3 |   
| Jose Luis | siuL oseJ          |      8 |       5 |        6 |  4 |   
+-----------+--------------------+--------+---------+----------+----+   
4 rows in set (0.04 sec)                                                