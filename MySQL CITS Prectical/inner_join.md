``` sql 
mysql> show databases;
+---------------------+
| Database            |
+---------------------+
| employee            |
| employee_management |
| information_schema  |
| mysql               |
| nsti                |
| performance_schema  |
| practical           |
| school_2            |
| student             |
+---------------------+
9 rows in set (0.59 sec)

mysql> use student;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_student |
+-------------------+
| class             |
| class_2           |
| marks             |
| student           |
+-------------------+
4 rows in set (0.08 sec)

mysql> use nsti;
Database changed
mysql> show tables;
+----------------+
| Tables_in_nsti |
+----------------+
| product        |
| stusent        |
+----------------+
2 rows in set (0.00 sec)

mysql> create table employee(emp_id int primary key auto_increment,emp_name,dept_id,salary,joinDate)
    -> create table employee(emp_id int primary key auto_increment,emp_name,dept_id,salary,joinDate)^C
mysql> ^C
mysql> ^C
mysql> create table employee(emp_id int primary key auto_increment,
    -> emp_name varchar(50),
    -> dept_id int,
    -> salary int,
    -> join_date date);
Query OK, 0 rows affected (0.27 sec)

mysql> insert into employee values(1,'Ravi',10,25000,'2018-06-01');
Query OK, 1 row affected (0.08 sec)

mysql> select * from employee;
+--------+----------+---------+--------+------------+
| emp_id | emp_name | dept_id | salary | join_date  |
+--------+----------+---------+--------+------------+
|      1 | Ravi     |      10 |  25000 | 2018-06-01 |
+--------+----------+---------+--------+------------+
1 row in set (0.04 sec)

mysql> insert into employee (emp_name, dept_id,salary,join_date) values
    -> ('Suman',20,30000,'2019-08-15'),
    -> ('Riya',10,27000,'2020-01-10');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+--------+------------+
| emp_id | emp_name | dept_id | salary | join_date  |
+--------+----------+---------+--------+------------+
|      1 | Ravi     |      10 |  25000 | 2018-06-01 |
|      2 | Suman    |      20 |  30000 | 2019-08-15 |
|      3 | Riya     |      10 |  27000 | 2020-01-10 |
+--------+----------+---------+--------+------------+
3 rows in set (0.00 sec)

mysql> insert into employee (emp_name, dept_id,salary,join_date) values
    -> ('Karan',30,22000,'2021-03-12'),
    -> ('Anu',20,28000,'2022-07-20');
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+--------+------------+
| emp_id | emp_name | dept_id | salary | join_date  |
+--------+----------+---------+--------+------------+
|      1 | Ravi     |      10 |  25000 | 2018-06-01 |
|      2 | Suman    |      20 |  30000 | 2019-08-15 |
|      3 | Riya     |      10 |  27000 | 2020-01-10 |
|      4 | Karan    |      30 |  22000 | 2021-03-12 |
|      5 | Anu      |      20 |  28000 | 2022-07-20 |
+--------+----------+---------+--------+------------+
5 rows in set (0.00 sec)

mysql> create table department(dept_id int,Dept_name varchar(50));
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+----------------+
| Tables_in_nsti |
+----------------+
| department     |
| employee       |
| product        |
| stusent        |
+----------------+
4 rows in set (0.00 sec)

mysql> insert into department values (10,'Sales'),(20,'HR'),(30,'IT'),(40,'Marketing');
Query OK, 4 rows affected (0.03 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | Dept_name |
+---------+-----------+
|      10 | Sales     |
|      20 | HR        |
|      30 | IT        |
|      40 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> use nsti;
Database changed
mysql> SELECT * FROM DEPARTMENT;
+---------+-----------+
| dept_id | Dept_name |
+---------+-----------+
|      10 | Sales     |
|      20 | HR        |
|      30 | IT        |
|      40 | Marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM EMPLOYEE;
+--------+----------+---------+--------+------------+
| emp_id | emp_name | dept_id | salary | join_date  |
+--------+----------+---------+--------+------------+
|      1 | Ravi     |      10 |  25000 | 2018-06-01 |
|      2 | Suman    |      20 |  30000 | 2019-08-15 |
|      3 | Riya     |      10 |  27000 | 2020-01-10 |
|      4 | Karan    |      30 |  22000 | 2021-03-12 |
|      5 | Anu      |      20 |  28000 | 2022-07-20 |
+--------+----------+---------+--------+------------+
5 rows in set (0.00 sec)

mysql> SELECT E.EMP_NAME, D. DEPT_NAME
    -> FROM EMPLOYEE E
    ->     RIGHT JOIN DEPARTMENT D
    -> ON E.DEPT_ID = D.DEPT_ID;
+----------+-----------+
| EMP_NAME | DEPT_NAME |
+----------+-----------+
| Riya     | Sales     |
| Ravi     | Sales     |
| Anu      | HR        |
| Suman    | HR        |
| Karan    | IT        |
| NULL     | Marketing |
+----------+-----------+
6 rows in set (0.00 sec)

mysql> SELECT D.DEPT_NAME, SUM(E.SALARY)
    -> FROM EMPLOYEE E
    ->     INNER JOIN DEPARTMENT D
    -> ON E. DEPT_ID = D. DEPT_ID
    -> GROUP BY DEPT_NAME;
+-----------+---------------+
| DEPT_NAME | SUM(E.SALARY) |
+-----------+---------------+
| Sales     |         52000 |
| HR        |         58000 |
| IT        |         22000 |
+-----------+---------------+
3 rows in set (0.06 sec)


mysql> SELECT D.DEPT_NAME, SUM(E.SALARY)
    ->  FROM EMPLOYEE E
    -> INNER JOIN DEPARTMENT D
    -> ON E.DEPT_ID = D.DEPT_ID
    -> GROUP BY D.DEPT_NAME
    -> HAVING SUM(E.SALARY) > 50000;
+-----------+---------------+
| DEPT_NAME | SUM(E.SALARY) |
+-----------+---------------+
| Sales     |         52000 |
| HR        |         58000 |
+-----------+---------------+
2 rows in set (0.04 sec)

mysql> SELECT DEPT_ID, COUNT(EMP_ID) AS EMP_COUNT
    -> FROM EMPLOYEE
    -> GROUP BY DEPT_ID
    -> HAVING COUNT(EMP_ID) > 1;
+---------+-----------+
| DEPT_ID | EMP_COUNT |
+---------+-----------+
|      10 |         2 |
|      20 |         2 |
+---------+-----------+
2 rows in set (0.05 sec)

mysql> SELECT D.DEPT_NAME, AVG(E.SALARY)
    -> FROM EMPLOYEE E
    -> INNER JOIN DEPARTMENT D
    -> ON E.DEPT_ID = D.DEPT_ID
    -> GROUP BY D.DEPT_NAME;
+-----------+---------------+
| DEPT_NAME | AVG(E.SALARY) |
+-----------+---------------+
| Sales     |    26000.0000 |
| HR        |    29000.0000 |
| IT        |    22000.0000 |
+-----------+---------------+
3 rows in set (0.01 sec)

mysql> SELECT EMP_NAME, SALARY
    -> FROM EMPLOYEE
    -> WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE);
+----------+--------+
| EMP_NAME | SALARY |
+----------+--------+
| Suman    |  30000 |
| Riya     |  27000 |
| Anu      |  28000 |
+----------+--------+
3 rows in set (0.00 sec)



mysql>  SELECT EMP_NAME
    -> FROM EMPLOYEE
    -> WHERE DEPT_ID = (SELECT DEPT_ID FROM DEPARTMENT
    -> WHERE DEPT_NAME = 'SALES');
+----------+
| EMP_NAME |
+----------+
| Ravi     |
| Riya     |
+----------+
2 rows in set (0.00 sec)

mysql> SELECT DEPT_NAME
    -> FROM DEPARTMENT
    -> WHERE DEPT_ID IN (SELECT DEPT_ID
    ->  FROM EMPLOYEE WHERE SALARY >28000);
+-----------+
| DEPT_NAME |
+-----------+
| HR        |
+-----------+
1 row in set (0.05 sec)

mysql> SELECT EMP_NAME SALARY
    -> FROM EMPLOYEE
    -> WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE);
+--------+
| SALARY |
+--------+
| Suman  |
+--------+
1 row in set (0.05 sec)


mysql> SELECT D.DEPT_NAME, SUM(E.SALARY) AS TOTALSALARY
    -> FROM EMPLOYEE E
    -> JOIN DEPARTMENT D
    -> ON E.DEPT_ID = D.DEPT_ID
    -> WHERE E.JOIN_DATE > '2019-01-01'
    -> GROUP BY D.DEPT_NAME
    -> HAVING SUM(E.SALARY) > 50000;
+-----------+-------------+
| DEPT_NAME | TOTALSALARY |
+-----------+-------------+
| HR        |       58000 |
+-----------+-------------+
1 row in set (0.01 sec)