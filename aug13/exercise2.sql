mysql> DESCRIBE grades;
+------------+---------------------+------+-----+---------+----------------+
| Field      | Type                | Null | Key | Default | Extra          |
+------------+---------------------+------+-----+---------+----------------+
| id         | int(10) unsigned    | NO   | PRI | NULL    | auto_increment |
| student_id | int(10) unsigned    | YES  |     | NULL    |                |
| week       | tinyint(2) unsigned | YES  |     | NULL    |                |
| grade      | tinyint(2) unsigned | YES  |     | NULL    |                |
+------------+---------------------+------+-----+---------+----------------+
4 rows in set (0.01 sec)



mysql> DESCRIBE students;
+------------+------------------+------+-----+---------+----------------+
| Field      | Type             | Null | Key | Default | Extra          |
+------------+------------------+------+-----+---------+----------------+
| id         | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(120)     | YES  |     | NULL    |                |
| last_name  | varchar(120)     | YES  |     | NULL    |                |
+------------+------------------+------+-----+---------+----------------+
3 rows in set (0.00 sec)