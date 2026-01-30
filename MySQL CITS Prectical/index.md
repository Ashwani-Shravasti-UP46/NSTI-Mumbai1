```sql

mysql> select * from employ;
+--------+----------+---------+--------+
| emp_id | emp_name | dept_id | salary |
+--------+----------+---------+--------+
|      1 | Alic     |      10 |  30000 |
|      2 | Bob      |      20 |  40000 |
|      3 | John     |      10 |  35000 |
|      4 | John     |      30 |  45000 |
+--------+----------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from department_1;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|      10 | HR        |
|      20 | IT        |
|      30 | finance   |
+---------+-----------+
3 rows in set (0.00 sec)

mysql> show index from employ;
+--------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| Table  | Non_unique | Key_name     | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment | Visible | Expression |
+--------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
| employ |          0 | PRIMARY      |            1 | emp_id      | A         |           4 |     NULL |   NULL |      | BTREE     |         |               | YES     | NULL       |
| employ |          1 | idx_emp_name |            1 | emp_name    | A         |           3 |     NULL |   NULL | YES  | BTREE      |         |               | YES     | NULL       |
+--------+------------+--------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+---------+------------+
2 rows in set (0.00 sec)
mysql> SELECT e.emp_name, d.dept_name
    -> FROM employ e
    -> INNER JOIN department_1 d
    -> ON e.dept_id = d.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| Alic     | HR        |
| Bob      | IT        |
| John     | HR        |
| John     | finance   |
+----------+-----------+
4 rows in set (0.00 sec)

===mysql> select * from employ where emp_name = 'john';
+--------+----------+---------+--------+
| emp_id | emp_name | dept_id | salary |
+--------+----------+---------+--------+
|      3 | John     |      10 |  35000 |
|      4 | John     |      30 |  45000 |
+--------+----------+---------+--------+
2 rows in set (0.01 sec)

mysql> select emp_id, emp_name from employ order by emp_name;
+--------+----------+
| emp_id | emp_name |
+--------+----------+
|      1 | Alic     |
|      2 | Bob      |
|      3 | John     |
|      4 | John     |
+--------+----------+
4 rows in set (0.00 sec)mysql> select e.emp_id, d.dept_name
    -> from employ e
    -> right join department_1 d
    -> on e.dept_id = d.dept_id;
+--------+-----------+
| emp_id | dept_name |
+--------+-----------+
|      3 | HR        |
|      1 | HR        |
|      2 | IT        |
|      4 | finance   |
+--------+-----------+
4 rows in set (0.04 sec)

mysql> select e.emp_id,E.emp_name,salary,d.dept_id
    -> from employ e
    -> right join department_1 d
    -> on e.dept_id = d.dept_id;
+--------+----------+--------+---------+
| emp_id | emp_name | salary | dept_id |
+--------+----------+--------+---------+
|      3 | John     |  35000 |      10 |
|      1 | Alic     |  30000 |      10 |
|      2 | Bob      |  40000 |      20 |
|      4 | John     |  45000 |      30 |
+--------+----------+--------+---------+
4 rows in set (0.00 sec)

mysql> select e.emp_id, d.dept_name,d.dept_name
    -> from employ e
    -> right join department_1 d
    -> on e.dept_id = d.dept_id;
+--------+-----------+-----------+
| emp_id | dept_name | dept_name |
+--------+-----------+-----------+
|      3 | HR        | HR        |
|      1 | HR        | HR        |
|      2 | IT        | IT        |
|      4 | finance   | finance   |
+--------+-----------+-----------+
4 rows in set (0.00 sec)

mysql> select e.emp_id,E.emp_name,salary,d.dept_id,D.dept_name
    -> from employ e
    -> right join department_1 d
    -> on e.dept_id = d.dept_id;
+--------+----------+--------+---------+-----------+
| emp_id | emp_name | salary | dept_id | dept_name |
+--------+----------+--------+---------+-----------+
|      3 | John     |  35000 |      10 | HR        |
|      1 | Alic     |  30000 |      10 | HR        |
|      2 | Bob      |  40000 |      20 | IT        |
|      4 | John     |  45000 |      30 | finance   |
+--------+----------+--------+---------+-----------+
4 rows in set (0.00 sec)


