mysql> create table department(deptID int,dept_name varchar(30));
Query OK, 0 rows affected (0.10 sec)

mysql> create table emp(empID int primary key,emp_name varchar(20),deptID int,salary int, join_Date DATE);
Query OK, 0 rows affected (0.07 sec)  

mysql> insert into emp(empID,emp_name,deptID,salary,join_Date)
    -> values(1,'Ravi',10,25000,'2018-06-01'),
    -> (2, 'Suman', 20, 30000, '2019-08-15');
Query OK, 2 rows affected (0.05 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMP;
+-------+----------+--------+--------+------------+
| empID | emp_name | deptID | salary | join_Date  |
+-------+----------+--------+--------+------------+
|     1 | Ravi     |     10 |  25000 | 2018-06-01 |
|     2 | Suman    |     20 |  30000 | 2019-08-15 |
+-------+----------+--------+--------+------------+
2 rows in set (0.00 sec)

mysql> insert into emp(empID,emp_name,deptID,salary,join_Date)
    -> values(3,'Riya',10,27000,'2020-01-10'),
    -> (4, 'Karan', 30, 22000, '2021-03-12'),
    -> (5, 'Anu', 20, 28000, '2022-07-20');
Query OK, 3 rows affected (0.00 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMP;
+-------+----------+--------+--------+------------+
| empID | emp_name | deptID | salary | join_Date  |
+-------+----------+--------+--------+------------+
|     1 | Ravi     |     10 |  25000 | 2018-06-01 |
|     2 | Suman    |     20 |  30000 | 2019-08-15 |
|     3 | Riya     |     10 |  27000 | 2020-01-10 |
|     4 | Karan    |     30 |  22000 | 2021-03-12 |
|     5 | Anu      |     20 |  28000 | 2022-07-20 |
+-------+----------+--------+--------+------------+
5 rows in set (0.00 sec)


mysql> insert into department(deptID, dept_name)
    -> values(10, 'sales'),(20, 'HR'),(30,'IT'),(40,'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM department;
+--------+-----------+
| deptID | dept_name |
+--------+-----------+
|     10 | sales     |
|     20 | HR        |
|     30 | IT        |
|     40 | Marketing |
+--------+-----------+
4 rows in set (0.00 sec)


mysql> DELIMITER //
mysql> CREATE PROCEDURE SHOWEMPL()
    -> BEGIN
    -> SELECT * FROM EMP;
    -> END//
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CALL SHOWEMPL();
+-------+----------+--------+--------+------------+
| empID | emp_name | deptID | salary | join_Date  |
+-------+----------+--------+--------+------------+
|     1 | Ravi     |     10 |  25000 | 2018-06-01 |
|     2 | Suman    |     20 |  30000 | 2019-08-15 |
|     3 | Riya     |     10 |  27000 | 2020-01-10 |
|     4 | Karan    |     30 |  22000 | 2021-03-12 |
|     5 | Anu      |     20 |  28000 | 2022-07-20 |
+-------+----------+--------+--------+------------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER //
CREATE PROCEDURE GetEmplByDept(IN p_dept INT)
BEGIN
    SELECT EMP_NAME, SALARY
    FROM EMP
    WHERE DEPTID = p_dept; 
END;

mysql> DELIMITER ;
mysql> Call GetEmplByDept(20);
+----------+--------+
| EMP_NAME | SALARY |
+----------+--------+
| Suman    |  30000 |
| Anu      |  28000 |
+----------+--------+
2 rows in set (0.04 sec)

Query OK, 0 rows affected (0.05 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURe TotalrSalaryByDept(IN p_dept INT,OUT total_Sal INT)
    -> BEGIN
    -> SELECT SUM(SALARY)
    -> INTO total_sal
    -> FROM EMP
    -> WHERE DEPTID = p_dept;
    -> END//
Query OK, 0 rows affected (0.08 sec)

mysql> DELIMITER ;
mysql> Call TotalrSalaryByDept(10,@total);
Query OK, 1 row affected (0.05 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|  52000 |
+--------+
1 row in set (0.02 sec)


mysql> DELIMITER //
mysql> CREATE PROCEDURE IncreaseSalary(
    -> IN p_empid INT,
    -> IN p_increment INT
    -> )
    -> BEGIN
    -> UPDATE EMP
    -> SET SALARY = SALARY + P_increment
    -> WHERE EMPID = P_empid;
    -> END//  
Query OK, 0 rows affected (0.06 sec)

mysql> DELIMITER ;
mysql> Call IncreaseSalary(1, 2000);
Query OK, 1 row affected (0.07 sec)

mysql> select * from emp
    -> where empID = 1;
+-------+----------+--------+--------+------------+
| empID | emp_name | deptID | salary | join_Date  |
+-------+----------+--------+--------+------------+
|     1 | Ravi     |     10 |  27000 | 2018-06-01 |
+-------+----------+--------+--------+------------+
1 row in set (0.07 sec)


mysql> delimiter //
mysql> create procedure IncrementSalary(
             -> INOUT p_Sal INT
             -> )
             -> B EGIN
             -> set p_sal = p_sal + 1000;
             -> END//
Query OK, 0 rows affected (0.05 sec)

mysql> delimiter ;
mysql> set @s = 25000;
Query OK, 0 rows affected (0.05 sec)

mysql> Call incrementSalary(@s);
Query OK, 0 rows affected (0.00 sec)

mysql> select @s;
+-------+
| @s    |
+-------+
| 26000 |
+-------+
1 row in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE RaiseHighSalary(IN minSalary INT)
                 -> BEGIN
                 ->     -- Show employees with salary greater than minSalary
                 ->     SELECT emp_name, salary
                 ->     FROM emp
                 ->     WHERE salary > minSalary;
                 -> 
                 ->     -- Increase salary
                 ->     UPDATE emp
                 ->     SET salary = salary + 5000
                 ->     WHERE salary > minSalary;
                 -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> call RaiseHighSalary(27000);
+----------+--------+
| emp_name | salary |
+----------+--------+
| Suman    |  30000 |
| Anu      |  28000 |
+----------+--------+
2 rows in set (0.00 sec)

Query OK, 2 rows affected (0.07 sec)

##############################################################
##############################################################
##############################################################

mysql> CREATE TABLE employees(
                    -> empid INT AUTO_INCREMENT PRIMARY KEY,
                    -> emp_name VARCHAR(100),
                    -> salary DECIMAL(10,2),
                    -> department VARCHAR(100)
                    -> );
Query OK, 0 rows affected (0.42 sec)

mysql> INSERT INTO EMPLOYEES(EMPID,EMP_NAME,SALARY,DEPARTMENT)
    -> VALUES
                             (1,'Rahul',50000.00,'IT'),
                             (2,'Sneha',62000.50,'HR'),
                             (3,'Amit',45000.75,'Finance'),
                             (4,'Priya',65000.80,'Marketing'),
                             (5,'Ashwani',70000.64,'business'),
                             (6,'Kajal',55000.79,'Production');
Query OK, 6 rows affected (0.09 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEES;
+-------+----------+----------+------------+
| empid | emp_name | salary   | department |
+-------+----------+----------+------------+
|     1 | Rahul    | 50000.00 | IT         |
|     2 | Sneha    | 62000.50 | HR         |
|     3 | Amit     | 45000.75 | Finance    |
|     4 | Priya    | 65000.80 | Marketing  |
|     5 | Ashwani  | 70000.64 | business   |
|     6 | Kajal    | 55000.79 | Production |
+-------+----------+----------+------------+
6 rows in set (0.08 sec)


##############################################################
##############################################################
##############################################################
##############################################################
##############################################################
##############################################################
##############################################################