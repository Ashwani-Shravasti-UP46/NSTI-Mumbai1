
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| ashwani            |
| information_schema |
| mysql              |
| nsti               |
| performance_schema |
| sys                |
| test               |
+--------------------+
7 rows in set (0.31 sec)

mysql> USE NSTI;
Database changed
mysql> SHOW TABLES;
+----------------+
| Tables_in_nsti |
+----------------+
| department     |
| dept           |
| emp            |
| emp_details    |
| emp_join       |
| empl           |
| employee_1     |
| employees      |
| new_emp        |
+----------------+
9 rows in set (0.02 sec)

mysql> SELECT * FROM EMPLOYEE;
+-------+----------+
| empID | City     |
+-------+----------+
|     1 | DELHI    |
|     2 | MUMBAI   |
|     3 | BANGLORE |
|     4 | DELHI    |
|     5 | MUMBAI   |
|     6 | CHENNAI  |
|     7 | BANGLORE |
|     8 | DELHI    |
|     9 | MUMBAI   |
|    10 | CHENNAI  |
|    11 | BANGLORE |
+-------+----------+
11 rows in set (0.11 sec)

mysql> SELECT * FROM EMPLOYEES_1;
mysql> SELECT * FROM EMPLOYEE_1;
+-------+---------+--------+--------+------------+
| empID | empName | deptID | salary | Join_Date  |
+-------+---------+--------+--------+------------+
|     1 | Ravi    |     10 |  25000 | 2018-06-01 |
|     2 | Suman   |     20 |  30000 | 2019-08-15 |
|     3 | Riya    |     10 |  27000 | 2020-01-10 |
|     4 | Karan   |     30 |  22000 | 2021-03-12 |
|     5 | Anu     |     20 |  28000 | 2022-07-20 |
+-------+---------+--------+--------+------------+
5 rows in set (0.03 sec)

mysql> SELECT * FROM EMPLOY;
mysql> SELECT * FROM EMP;
+-------+----------+--------+--------+------------+
| empID | emp_name | deptID | salary | join_Date  |
+-------+----------+--------+--------+------------+
|     1 | Ravi     |     10 |  27000 | 2018-06-01 |
|     2 | Suman    |     20 |  35000 | 2019-08-15 |
|     3 | Riya     |     10 |  27000 | 2020-01-10 |
|     4 | Karan    |     30 |  22000 | 2021-03-12 |
|     5 | Anu      |     20 |  33000 | 2022-07-20 |
+-------+----------+--------+--------+------------+
5 rows in set (0.09 sec)

mysql> SELECT * FROM EMPL;
+-------+---------+-----------+--------+----------+---------+--------+------------+
| EmpNo | Fname   | Lname     | DeptNo | Edulevel | Jobcode | salary | Hiredate   |
+-------+---------+-----------+--------+----------+---------+--------+------------+
| 10001 | Deepak  | Mathew    |    100 | Degree   |       1 |  20000 | 2017-05-10 |
| 10002 | Ashwani | Bouddhist |    100 | PG       |       1 |  22000 | 2016-01-05 |
| 10003 | Deepa   | Raj       |    101 | Diploma  |       3 |  16000 | 2019-01-04 |
| 10004 | Divya   | Jayan     |    102 | MBA      |       2 |  28000 | 2017-10-10 |
| 10005 | Karthik | Satyan    |    102 | MBA      |       4 |  30000 | 2018-12-01 |
| 10006 | Manu    | George    |    101 | ITI      |       3 |  12000 | 2016-03-20 |
| 10007 | Amal    | Davis     |    103 | Degree   |       2 |  20000 | 2017-02-01 |
| 10008 | Sanal   | Krishnan  |    104 | Degree   |       2 |  21000 | 2016-02-21 |
| 10009 | Kiran   | Lal       |    104 | Degree   |       2 |  22000 | 2015-02-21 |
| 10010 | Syam    | Nair      |    104 | Degree   |       2 |  20000 | 2017-02-10 |
+-------+---------+-----------+--------+----------+---------+--------+------------+
10 rows in set (0.02 sec)

mysql> SELECT * FROM DEPT;
+--------+------------+---------------+
| deptNo | DeptName   | Location      |
+--------+------------+---------------+
|    100 | HR         | Trivandrum    |
|    101 | Production | Kazhakkoottam |
|    102 | Marketing  | Trivandrum    |
|    103 | Purchase   | Trivandrum    |
|    104 | Sales      | Attingal      |
+--------+------------+---------------+
5 rows in set (0.06 sec)

mysql> SELECT EMPNO,Fname,lname,deptno
    -> from empl
    -> where joincode = 1;
ERROR 1054 (42S22): Unknown column 'joincode' in 'where clause'
mysql> SELECT EMPNO,Fname,lname,deptno
    -> from empl
    -> where jobcode = 1;
+-------+---------+-----------+--------+
| EMPNO | Fname   | lname     | deptno |
+-------+---------+-----------+--------+
| 10001 | Deepak  | Mathew    |    100 |
| 10002 | Ashwani | Bouddhist |    100 |
+-------+---------+-----------+--------+
2 rows in set (0.07 sec)

###########################################################################
###########################################################################
mysql> SELECT EMPNO,Fname,lname,deptname,salary
    -> from empl
    -> inner join dept
    -> on empl.deptno = dept.deptno
    -> where deptname in('HR','Purchase','Sales') ;
+-------+---------+-----------+----------+--------+
| EMPNO | Fname   | lname     | deptname | salary |
+-------+---------+-----------+----------+--------+
| 10001 | Deepak  | Mathew    | HR       |  20000 |
| 10002 | Ashwani | Bouddhist | HR       |  22000 |
| 10007 | Amal    | Davis     | Purchase |  20000 |
| 10008 | Sanal   | Krishnan  | Sales    |  21000 |
| 10009 | Kiran   | Lal       | Sales    |  22000 |
| 10010 | Syam    | Nair      | Sales    |  20000 |
+-------+---------+-----------+----------+--------+
6 rows in set (0.04 sec)

###########################################################################
###########################################################################

mysql>
mysql> SELECT FNAME FROM EMPL
    -> WHERE DEPTNO = (SELECT DEPTNO FROM EMPL
    -> GROUP BY DEPTNO
    -> ORDER BY COUNT(EMPNO) DESC
    -> LIMIT 1
    -> );
+-------+
| FNAME |
+-------+
| Sanal |
| Kiran |
| Syam  |
+-------+
3 rows in set (0.05 sec)

mysql>
mysql> CREATE DATABASE RECORD;
Query OK, 1 row affected (0.07 sec)

mysql> USE RECORD;
Database changed
mysql> CREATE TABLE EMPLOYEE(ID INT PRIMARY KEY,
    -> NAME VARCHAR(30),
    -> SALARY DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> INSERT INTO EMPLOYEE(ID,NAME,SALARY)
    -> VALUES
    -> (1,'Sejal',55000.00),
    -> (2,'Ravi',60000.00),
    -> (3,'Ashwani',58000.00);
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+----+---------+----------+
| ID | NAME    | SALARY   |
+----+---------+----------+
|  1 | Sejal   | 55000.00 |
|  2 | Ravi    | 60000.00 |
|  3 | Ashwani | 58000.00 |
+----+---------+----------+
3 rows in set (0.00 sec)


mysql> DELIMITER //
mysql> CREATE PROCEDURE process_employee_rows()
    -> BEGIN
    ->     DECLARE emp_id INT;
    ->     DECLARE emp_name VARCHAR(100);
    ->     DECLARE emp_salary DECIMAL(10,2);
    ->     DECLARE done INT DEFAULT FALSE;
    ->
    ->     DECLARE emp_cursor CURSOR FOR
    ->         SELECT id, name, salary FROM EMPLOYEE;
    ->
    ->     DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    ->
    ->     OPEN emp_cursor;
    ->
    ->     read_loop: LOOP
    ->         FETCH emp_cursor INTO emp_id, emp_name, emp_salary;
    ->
    ->         IF done THEN
    ->             LEAVE read_loop;
    ->         END IF;
    ->
    ->         SELECT emp_id AS Employee_ID,
    ->                emp_name AS Name,
    ->                emp_salary AS Salary;
    ->     END LOOP;
    ->
    ->     CLOSE emp_cursor;
    -> END;
    -> //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL process_employee_rows();
+-------------+-------+----------+
| Employee_ID | Name  | Salary   |
+-------------+-------+----------+
|           1 | Sejal | 55000.00 |
+-------------+-------+----------+
1 row in set (0.05 sec)

+-------------+------+----------+
| Employee_ID | Name | Salary   |
+-------------+------+----------+
|           2 | Ravi | 60000.00 |
+-------------+------+----------+
1 row in set (0.05 sec)

+-------------+---------+----------+
| Employee_ID | Name    | Salary   |
+-------------+---------+----------+
|           3 | Ashwani | 58000.00 |
+-------------+---------+----------+
1 row in set (0.06 sec)

Query OK, 0 rows affected (0.06 sec)

mysql> SELECT id, name, salary FROM EMPLOYEE;
+----+---------+----------+
| id | name    | salary   |
+----+---------+----------+
|  1 | Sejal   | 55000.00 |
|  2 | Ravi    | 60000.00 |
|  3 | Ashwani | 58000.00 |
+----+---------+----------+
3 rows in set (0.00 sec)

mysql>