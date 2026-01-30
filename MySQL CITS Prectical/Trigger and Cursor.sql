




mysql> DESC employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empid    | int         | NO   | PRI | NULL    |       |
| empname  | varchar(30) | YES  |     | NULL    |       |
| deptid   | int         | YES  |     | NULL    |       |
| salary   | int         | YES  |     | NULL    |       |
| joindate | date        | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.05 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE TRIGGER before_employee_insert
    -> BEFORE INSERT ON employee
    -> FOR EACH ROW
    -> BEGIN
    ->     IF NEW.joindate IS NULL THEN
    ->         SET NEW.joindate = CURDATE();
    ->     END IF;
    -> END//
Query OK, 0 rows affected (0.08 sec)


mysql> DESC employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| empid    | int         | NO   | PRI | NULL    |       |
| empname  | varchar(30) | YES  |     | NULL    |       |
| deptid   | int         | YES  |     | NULL    |       |
| salary   | int         | YES  |     | NULL    |       |
| joindate | date        | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.05 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE TRIGGER before_employee_insert
    -> BEFORE INSERT ON employee
    -> FOR EACH ROW
    -> BEGIN
    ->     IF NEW.joindate IS NULL THEN
    ->         SET NEW.joindate = CURDATE();
    ->     END IF;
    -> END//
Query OK, 0 rows affected (0.08 sec)

mysql> DELIMITER ;
mysql> INSERT INTO employee (empid, empname, deptid, salary)
    -> VALUES (7, 'Rahul', 10, 26000),(8, 'Anu', 20, 28000),(6, 'Riya', 10, 27000);
Query OK, 1 row affected (0.07 sec)

mysql> SELECT * FROM employee WHERE empid IN (7,10);
               +-------+---------+--------+--------+------------+
               | empid | empname | deptid | salary | joindate   |
               +-------+---------+--------+--------+------------+
               |     7 | Rahul   |     10 |  26000 | 2026-01-28 |
               |     8 | Anu     |     20 |  28000 | 2026-01-28 |
               |    10 | Anu     |     20 |  28000 | 2026-01-28 |
               +-------+---------+--------+--------+------------+

1 row in set (0.04 sec)


mysql> CREATE TABLE salary_audit (
              ->     audit_id INT AUTO_INCREMENT PRIMARY KEY,
              ->     empid INT NOT NULL,
              ->     old_salary DECIMAL(10,2),
              ->     new_salary DECIMAL(10,2),
              ->     change_date DATETIME DEFAULT CURRENT_TIMESTAMP
              -> );
Query OK, 0 rows affected (0.08 sec)


mysql> DELIMITER //
mysql> CREATE TRIGGER after_salary_update
    -> AFTER UPDATE ON EMPLOYEE
    -> FOR EACH ROW
    -> BEGIN  
    -> IF OLD.salary <> NEW.salary THEN
    -> INSERT INTO salary_audit(empid, old_salary,new_salary)
    -> VALUES(OLD.empid, OLD.salary, NEW.salary);
    -> END IF;
    -> END//
Query OK, 0 rows affected (0.10 sec)
mysql> DELIMITER ;

mysql> UPDATE employee
    -> SET salary = 28000
    -> WHERE empid = 1;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM salary_audit;
                   +----------+-------+------------+------------+---------------------+
                   | audit_id | empid | old_salary | new_salary | change_date         |
                   +----------+-------+------------+------------+---------------------+
                   |        1 |     1 |   25000.00 |   28000.00 | 2026-01-28 22:13:39 |
                   +----------+-------+------------+------------+---------------------+
1 row in set (0.00 sec)

################################################
Q 3.
##################################################
mysql>
mysql> DELIMITER //
mysql>
mysql> CREATE TRIGGER before_employee_delete
    -> BEFORE DELETE ON employee
    -> FOR EACH ROW
    -> BEGIN
    ->     IF OLD.deptid = 20 THEN
    ->         SIGNAL SQLSTATE '45000'
    ->         SET MESSAGE_TEXT = 'Cannot delete employee from HR department';
    ->     END IF;
    -> END//
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> -- This should fail because deptid = 20 is HR
mysql> DELETE FROM employee WHERE empid = 2;
ERROR 1644 (45000): Cannot delete employee from HR department



mysql> DELETE FROM employee WHERE empid = 1;
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * FROM employee;
+-------+---------+--------+--------+------------+
| empid | empname | deptid | salary | joindate   |
+-------+---------+--------+--------+------------+
|     2 | Suman   |     20 |  30000 | 2019-08-15 |
|     3 | Riya    |     10 |  27000 | 2020-01-10 |
|     4 | Karan   |     30 |  22000 | 2021-03-12 |
|     5 | Anu     |     20 |  28000 | 2022-07-20 |
|     9 | Rahul   |     10 |  26000 | 2026-01-28 |
|    10 | Anu     |     20 |  28000 | 2026-01-28 |
|    11 | Rahul   |     10 |  26000 | 2026-01-28 |
|    12 | Rahul   |     10 |  26000 | 2026-01-28 |
|    13 | Anu     |     20 |  28000 | 2026-01-28 |
+-------+---------+--------+--------+------------+
9 rows in set (0.00 sec)

mysql> -- Example: restore only deleted row
mysql> INSERT INTO employee (empid, empname, deptid, salary, joindate)
    -> VALUES (1, 'Ravi', 10, 25000, '2018-06-01');
Query OK, 1 row affected (0.05 sec)

mysql> SELECT * FROM employee;
+-------+---------+--------+--------+------------+
| empid | empname | deptid | salary | joindate   |
+-------+---------+--------+--------+------------+
|     1 | Ravi    |     10 |  25000 | 2018-06-01 |
|     2 | Suman   |     20 |  30000 | 2019-08-15 |
|     3 | Riya    |     10 |  27000 | 2020-01-10 |
|     4 | Karan   |      30|  22000 | 2021-03-12 |
|     5 | Anu     |     20 |  28000 | 2022-07-20 |
|     9 | Rahul   |     10 |  26000 | 2026-01-28 |
|    10 | Anu     |     20 |  28000 | 2026-01-28 |
|    11 | Rahul   |     10 |  26000 | 2026-01-28 |
|    12 | Rahul   |     10 |  26000 | 2026-01-28 |
|    13 | Anu     |     20 |  28000 | 2026-01-28 |
+-------+---------+--------+--------+------------+
10 rows in set (0.00 sec)



################################################
Q 4.
##################################################

mysql> create table EmployeeLog
    -> (empid int,empname varchar(30),Action_date date);
Query OK, 0 rows affected (0.02 sec)



mysql> CREATE TRIGGER after_emp_insert
    -> AFTER INSERT ON employee
    -> FOR EACH ROW
    -> BEGIN
    ->     INSERT INTO EmployeeLog(empid, empname, Action_date)
    ->     VALUES (NEW.empid, NEW.empname, CURDATE());
    -> END//
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql> DELIMITER ;


mysql> INSERT INTO employee (empname, deptid, salary)
    -> VALUES ('Rahul', 10, 26000);
Query OK, 1 row affected (0.03 sec)

mysql>
mysql> -- Check EmployeeLog
mysql> SELECT * FROM EmployeeLog;
+-------+---------+-------------+
| empid | empname | Action_date |
+-------+---------+-------------+
|    14 | Rahul   | 2026-01-28  |
+-------+---------+-------------+
1 row in set (0.00 sec)


################################################
##################################################
mysql> SHOW TRIGGERS;
+------------------------+--------+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------+----------------------+----------------------+--------------------+
| Trigger                | Event  | Table    | Statement                                                                                                                                                  | Timing | Created                | sql_mode                                                                                                              | Definer        | character_set_client | collation_connection | Database Collation |
+------------------------+--------+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------+----------------------+----------------------+--------------------+
| before_employee_insert | INSERT | employee | BEGIN
    IF NEW.joindate IS NULL THEN
        SET NEW.joindate = CURDATE();
    END IF;
END                                                               | BEFORE | 2026-01-28 21:32:09.59 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | cp850                | cp850_general_ci     | utf8mb4_0900_ai_ci |
| after_emp_insert       | INSERT | employee | BEGIN
    INSERT INTO EmployeeLog(empid, empname, Action_date)
    VALUES (NEW.empid, NEW.empname, CURDATE());
END                                         | AFTER  | 2026-01-28 22:50:44.39 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | cp850                | cp850_general_ci     | utf8mb4_0900_ai_ci |
| after_salary_update    | UPDATE | employee | BEGIN
IF OLD.salary <> NEW.salary THEN
INSERT INTO salary_audit(empid, old_salary,new_salary)
VALUES(OLD.empid, OLD.salary, NEW.salary);
END IF;
END       | AFTER  | 2026-01-28 22:09:44.35 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | cp850                | cp850_general_ci     | utf8mb4_0900_ai_ci |
| before_employee_delete | DELETE | employee | BEGIN
    IF OLD.deptid = 20 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete employee from HR department';
    END IF;
END | BEFORE | 2026-01-28 22:30:54.96 | ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION | root@localhost | cp850                | cp850_general_ci     | utf8mb4_0900_ai_ci |
+------------------------+--------+----------+------------------------------------------------------------------------------------------------------------------------------------------------------------+--------+------------------------+-----------------------------------------------------------------------------------------------------------------------+----------------+----------------------+----------------------+--------------------+
4 rows in set (0.05 sec)

mysql>

################################################
################################################
################################################


mysql> select * from employee;
+-------+---------+--------+--------+------------+
| empid | empname | deptid | salary | joindate   |
+-------+---------+--------+--------+------------+
|     1 | Ravi    |     10 |  25000 | 2018-06-01 |
|     2 | Suman   |     20 |  30000 | 2019-08-15 |
|     3 | Riya    |     10 |  27000 | 2020-01-10 |
|     4 | Karan   |     30 |  22000 | 2021-03-12 |
|     5 | Anu     |     20 |  28000 | 2022-07-20 |
|    10 | Anu     |     20 |  28000 | 2026-01-28 |
|    13 | Anu     |     20 |  28000 | 2026-01-28 |
+-------+---------+--------+--------+------------+
7 rows in set (0.00 sec)




mysql> DROP TRIGGER before_employee_delete;
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> DELETE FROM employee
    -> WHERE empid IN (10, 13) AND deptid <> 20;
Query OK, 0 rows affected (0.00 sec)

mysql> DELETE FROM employee
    -> WHERE empid IN (10, 13);
Query OK, 2 rows affected (0.04 sec)

mysql> select * from employee;
+-------+---------+--------+--------+------------+
| empid | empname | deptid | salary | joindate   |
+-------+---------+--------+--------+------------+
|     1 | Ravi    |     10 |  25000 | 2018-06-01 |
|     2 | Suman   |     20 |  30000 | 2019-08-15 |
|     3 | Riya    |     10 |  27000 | 2020-01-10 |
|     4 | Karan   |     30 |  22000 | 2021-03-12 |
|     5 | Anu     |     20 |  28000 | 2022-07-20 |
+-------+---------+--------+--------+------------+
5 rows in set (0.00 sec)

##################################################