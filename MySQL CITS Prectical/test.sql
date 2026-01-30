
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
3 rows in set  (0.05 sec)

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

mysql>###########################################################################
###########################################################################
mysql> create database pg101_StoredProcedures;
Query OK, 1 row affected (0.04 sec)

mysql> use pg101_StoredProcedures;
Database changed
mysql>
mysql> #########################################################################
mysql> ##########################
mysql> --                       Stored Procedures
mysql> set SQL_SAFE_UPDATES = 0;
Query OK, 0 rows affected (0.01 sec)

mysql> Drop database pg101_StoredProcedures;
Query OK, 0 rows affected (0.05 sec)

mysql> create database pg101_StoredProcedures;
Query OK, 1 row affected (0.01 sec)

mysql> use pg101_StoredProcedures;
Database changed
mysql> -- Step 1: Create Table and Insert Data
mysql> -- Query for Table Creation:
mysql> CREATE TABLE employees (
    ->     emp_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     emp_name VARCHAR(100),
    ->     salary DECIMAL(10,2),
    ->     department VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> -- Query for Inserting Data:
mysql> INSERT INTO employees (emp_name, salary, department)
    -> VALUES
    -> ('Rahul', 50000.00, 'IT'),
    -> ('Sneha', 62000.50, 'HR'),
    -> ('Amit', 45000.75, 'Finance'),
    -> ('Priya', 70000.00, 'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> -- Query to View Data:
mysql> select * from employees;
+--------+----------+----------+------------+
| emp_id | emp_name | salary   | department |
+--------+----------+----------+------------+
|      1 | Rahul    | 50000.00 | IT         |
|      2 | Sneha    | 62000.50 | HR         |
|      3 | Amit     | 45000.75 | Finance    |
|      4 | Priya    | 70000.00 | Marketing  |
+--------+----------+----------+------------+
4 rows in set (0.00 sec)

mysql> -- Step 2: Create Stored Procedure with IN Parameters
mysql> -- Procedure Creation:
mysql> Delimiter //
mysql> Create procedure AddEmployee(
    ->     in p_emp_name VARCHAR(100),
    ->     in p_salary DECIMAL(10,2),
    ->     in p_department VARCHAR(100)
    ->     )
    ->     begin
    -> INSERT INTO employees(emp_name, salary, department) VALUES
    -> (p_emp_name, p_salary, p_department);
    -> select * from employees;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> Delimiter ;
mysql> -- Step 3: Call the procedure
mysql> call AddEmployee('kajal',95000,'SI');
+--------+----------+----------+------------+
| emp_id | emp_name | salary   | department |
+--------+----------+----------+------------+
|      1 | Rahul    | 50000.00 | IT         |
|      2 | Sneha    | 62000.50 | HR         |
|      3 | Amit     | 45000.75 | Finance    |
|      4 | Priya    | 70000.00 | Marketing  |
|      5 | kajal    | 95000.00 | SI         |
+--------+----------+----------+------------+
5 rows in set (0.01 sec)

Query OK, 0 rows affected (0.03 sec)

mysql> CALL AddEmployee ('Rahul Deshmukh', 50000.00, 'HR');
+--------+----------------+----------+------------+
| emp_id | emp_name       | salary   | department |
+--------+----------------+----------+------------+
|      1 | Rahul          | 50000.00 | IT         |
|      2 | Sneha          | 62000.50 | HR         |
|      3 | Amit           | 45000.75 | Finance    |
|      4 | Priya          | 70000.00 | Marketing  |
|      5 | kajal          | 95000.00 | SI         |
|      6 | Rahul Deshmukh | 50000.00 | HR         |
+--------+----------------+----------+------------+
6 rows in set (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

mysql> CALL AddEmployee ('Sneha Joshi', 60000.00, 'IT');
+--------+----------------+----------+------------+
| emp_id | emp_name       | salary   | department |
+--------+----------------+----------+------------+
|      1 | Rahul          | 50000.00 | IT         |
|      2 | Sneha          | 62000.50 | HR         |
|      3 | Amit           | 45000.75 | Finance    |
|      4 | Priya          | 70000.00 | Marketing  |
|      5 | kajal          | 95000.00 | SI         |
|      6 | Rahul Deshmukh | 50000.00 | HR         |
|      7 | Sneha Joshi    | 60000.00 | IT         |
+--------+----------------+----------+------------+
7 rows in set (0.00 sec)

Query OK, 0 rows affected (0.03 sec)

mysql> -- drop procedure  if exists p_insertDate;
mysql>
mysql> -- Stored Procedure with OUT Parameter
mysql> -- Procedure Creation:
mysql> Delimiter //
mysql> create procedure CountEmployeeByDeptName(IN p_DeptName varchar(100), Out p_count int)
    -> begin
    -> Select count(department) into p_count from employees
    -> where department=p_DeptName;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> Delimiter ;
mysql>
mysql> Call CountEmployeeByDeptName('SI', @emp_count);
Query OK, 1 row affected (0.01 sec)

mysql> Select @emp_count;
+------------+
| @emp_count |
+------------+
|          1 |
+------------+
1 row in set (0.00 sec)

mysql> -- Drop procedure if exists CountEmployeeByDeptName;
mysql>
mysql> -- Business Logic procedure with IF Condition
mysql> -- Procedure Creation:
mysql> Delimiter //
mysql> create procedure safeInsert(
    ->  IN p_emp_name varchar(100),
    ->     IN p_Salary int,
    ->     IN department varchar(100)
    ->     )
    -> begin
    -> if(p_salary>0) Then
    -> insert into employees(emp_name,salary,department) values
    -> (p_emp_name, p_Salary, department);
    -> else
    -> signal sqlstate '45000'
    -> Set message_text='Salary must be grater then 0';
    -> End if;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> Delimiter ;
mysql> call safeInsert('Gulshan',154202,'IT');
Query OK, 1 row affected (0.00 sec)

mysql> call safeInsert('Gulshan',-154202,'IT');
ERROR 1644 (45000): Salary must be grater then 0
mysql> -- drop procedure if exists safeInsert;
mysql> -- VIEW COMMANDS
mysql> -- AIM: Used to create a new table in a database with specified columns and data types, and perform various commands.
mysql> -- Step 1: CREATE TABLE Command
mysql> set SQL_SAFE_UPDATES = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> Drop database if exists pg101_StoredProcedures;
Query OK, 1 row affected (0.03 sec)

mysql> create database pg101_StoredProcedures;
Query OK, 1 row affected (0.01 sec)

mysql> use pg101_StoredProcedures;
Database changed
mysql> -- Step 1: CREATE TABLE Command
mysql> CREATE TABLE STUDENT (
    ->     RollNo INT,
    ->     Name VARCHAR(50),
    ->     Maths INT,
    ->     Science INT,
    ->     English INT
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> -- Step 2: INSERT Sample Data into STUDENT Table
mysql> INSERT INTO STUDENT (RollNo, Name, Maths, Science, English)
    -> VALUES
    -> (101, 'Rahul', 92, 85, 78),
    -> (102, 'Sneha', 88, 91, 80),
    -> (103, 'Amit', 76, 82, 90),
    -> (104, 'Priya', 95, 89, 93),
    -> (105, 'John', 67, 74, 70),
    -> (106, 'Anjali', 90, 88, 85),
    -> (107, 'Manav', 83, 76, 88);
Query OK, 7 rows affected (0.01 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> Select * from student;
+--------+--------+-------+---------+---------+
| RollNo | Name   | Maths | Science | English |
+--------+--------+-------+---------+---------+
|    101 | Rahul  |    92 |      85 |      78 |
|    102 | Sneha  |    88 |      91 |      80 |
|    103 | Amit   |    76 |      82 |      90 |
|    104 | Priya  |    95 |      89 |      93 |
|    105 | John   |    67 |      74 |      70 |
|    106 | Anjali |    90 |      88 |      85 |
|    107 | Manav  |    83 |      76 |      88 |
+--------+--------+-------+---------+---------+
7 rows in set (0.00 sec)

mysql> -- Step 3: CREATE VIEW Command
mysql> Create view HighMarkMath as Select RollNo, Maths from Student where Maths>85;
Query OK, 0 rows affected (0.01 sec)

mysql> select * from HighMarkMath;
+--------+-------+
| RollNo | Maths |
+--------+-------+
|    101 |    92 |
|    102 |    88 |
|    104 |    95 |
|    106 |    90 |
+--------+-------+
4 rows in set (0.00 sec)

mysql> -- Step 4: REPLACE VIEW Command
mysql> Create or Replace view HighMarkEnglish as Select RollNo, English from student where English>85;
Query OK, 0 rows affected (0.00 sec)

mysql> select * from HighMarkEnglish;
+--------+---------+
| RollNo | English |
+--------+---------+
|    103 |      90 |
|    104 |      93 |
|    107 |      88 |
+--------+---------+
3 rows in set (0.00 sec)

mysql> -- Step 5: DROP VIEW Command
mysql> Drop view if exists HighMarkMath;
Query OK, 0 rows affected (0.01 sec)

mysql> ##################################################
mysql> ##################################################
mysql> ##################################################
mysql> -- MYSQL Table Triggers
mysql>
mysql> -- Aim: Creating and executing MYSQL table triggers.
mysql> -- 1. BEFORE INSERT TRIGGER
mysql> set SQL_SAFE_UPDATES = 0;
Query OK, 0 rows affected (0.00 sec)

mysql> Drop database pg101_StoredProcedures;
Query OK, 2 rows affected (0.02 sec)

mysql> create database pg101_StoredProcedures;
Query OK, 1 row affected (0.00 sec)

mysql> use pg101_StoredProcedures;
Database changed
mysql>
mysql> CREATE TABLE EMPLOYEES (
    ->     EMP_ID INT NOT NULL UNIQUE AUTO_INCREMENT,
    ->     NAME VARCHAR(100) NOT NULL,
    ->     AGE INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO EMPLOYEES (NAME, AGE)
    -> VALUES
    -> ("TOM", 58),
    -> ("Jerry", 26),
    -> ("Orry", -46);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select*from Employees;
+--------+-------+------+
| EMP_ID | NAME  | AGE  |
+--------+-------+------+
|      1 | TOM   |   58 |
|      2 | Jerry |   26 |
|      3 | Orry  |  -46 |
+--------+-------+------+
3 rows in set (0.00 sec)

mysql> -- Step 3: Create BEFORE INSERT Trigger
mysql> Delimiter //
mysql> Create trigger AgeVerify
    -> Before Insert On Employees
    -> For Each Row
    -> Begin
    -> If New.Age<0 then
    -> Set New.Age=0;
    -> End If;
    -> End //
Query OK, 0 rows affected (0.01 sec)

mysql> Delimiter ;
mysql> -- Step 4: Insert More Records (After Trigger)
mysql> INSERT INTO EMPLOYEES (NAME, AGE)
    -> VALUES
    -> ("Akansha", 25),
    -> ("Ayushi", -23),
    -> ("Anushka", -24);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select*from Employees;
+--------+---------+------+
| EMP_ID | NAME    | AGE  |
+--------+---------+------+
|      1 | TOM     |   58 |
|      2 | Jerry   |   26 |
|      3 | Orry    |  -46 |
|      4 | Akansha |   25 |
|      5 | Ayushi  |    0 |
|      6 | Anushka |    0 |
+--------+---------+------+
6 rows in set (0.00 sec)

mysql>
mysql> -- 2. BEFORE UPDATE TRIGGER
mysql> -- Step 1: Create a New Table
mysql> CREATE TABLE EMPLOYES (
    ->     EMP_ID INT PRIMARY KEY,
    ->     EMP_NAME VARCHAR(25),
    ->     AGE INT,
    ->     SALARY FLOAT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> -- Step 2: Insert Data
mysql> INSERT INTO EMPLOYES VALUES
    -> (101, "JIMMY", 35, 70000),
    -> (102, "SHANE", 30, 55000),
    -> (103, "MARRY", 28, 62000),
    -> (104, "JACK", 30, 92000);
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql>
mysql> -- Step 3: Create BEFORE UPDATE Trigger
mysql> Select * From EMPLOYES;
+--------+----------+------+--------+
| EMP_ID | EMP_NAME | AGE  | SALARY |
+--------+----------+------+--------+
|    101 | JIMMY    |   35 |  70000 |
|    102 | SHANE    |   30 |  55000 |
|    103 | MARRY    |   28 |  62000 |
|    104 | JACK     |   30 |  92000 |
+--------+----------+------+--------+
4 rows in set (0.00 sec)

mysql> Delimiter //
mysql> Create Trigger UPT_Trigger
    -> Before Update On EMPLOYES
    -> For Each Row
    -> Begin
    -> if New.SALARY>10000 Then
    -> Set New.SALARY=85000;
    -> ElseIf New.SALARY<10000 Then
    -> Set New.SALARY=72000;
    -> End if;
    -> End //
Query OK, 0 rows affected (0.01 sec)

mysql> Delimiter ;
mysql>
mysql> -- Step 4: Update Records to Trigger Logic
mysql> UPDATE EMPLOYES SET SALARY = 8000 WHERE EMP_ID = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYES SET SALARY = 12000 WHERE EMP_ID = 102;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYES SET SALARY = 8000 WHERE EMP_ID = 103;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> UPDATE EMPLOYES SET SALARY = 18000 WHERE EMP_ID = 104;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> Select * From EMPLOYES;
+--------+----------+------+--------+
| EMP_ID | EMP_NAME | AGE  | SALARY |
+--------+----------+------+--------+
|    101 | JIMMY    |   35 |  72000 |
|    102 | SHANE    |   30 |  85000 |
|    103 | MARRY    |   28 |  72000 |
|    104 | JACK     |   30 |  85000 |
+--------+----------+------+--------+
4 rows in set (0.00 sec)

mysql>