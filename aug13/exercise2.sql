MariaDB [bts_intership]> DESCRIBE grades;
+----------+---------------------+------+-----+---------+-------+
| Field    | Type                | Null | Key | Default | Extra |
+----------+---------------------+------+-----+---------+-------+
| grade_id | int(10) unsigned    | YES  |     | NULL    |       |
| grade    | tinyint(2) unsigned | YES  |     | NULL    |       |
| period   | tinyint(2) unsigned | YES  |     | NULL    |       |
+----------+---------------------+------+-----+---------+-------+
3 rows in set (0.005 sec)


MariaDB [bts_intership]> DESCRIBE students_grade;
+------------+---------------------+------+-----+---------+-------+
| Field      | Type                | Null | Key | Default | Extra |
+------------+---------------------+------+-----+---------+-------+
| student_id | int(10) unsigned    | YES  |     | NULL    |       |
| grade_id   | int(10) unsigned    | YES  |     | NULL    |       |
| grade      | tinyint(2) unsigned | YES  |     | NULL    |       |
+------------+---------------------+------+-----+---------+-------+
3 rows in set (0.006 sec)