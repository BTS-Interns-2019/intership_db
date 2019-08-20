ariaDB [bts_intership]> describe students;
+------------+------------------+------+-----+---------+----------------+
| Field      | Type             | Null | Key | Default | Extra          |
+------------+------------------+------+-----+---------+----------------+
| id         | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
| first_name | varchar(120)     | YES  |     | NULL    |                |
| last_name  | varchar(120)     | YES  |     | NULL    |                |
+------------+------------------+------+-----+---------+----------------+
3 rows in set (0.005 sec)

MariaDB [bts_intership]> describe grade
    -> ;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| id           | varchar(120) | YES  |     | NULL    |       |
| grades       | varchar(120) | YES  |     | NULL    |       |
| calificacion | tinyint(2)   | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.113 sec)

MariaDB [bts_intership]>