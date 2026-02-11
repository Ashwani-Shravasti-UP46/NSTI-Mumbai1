mysql> show tables;
+-------------------+
| Tables_in_collega |
+-------------------+
| marks             |
| students          |
+-------------------+
2 rows in set (0.00 sec)

mysql> insert into students values
    -> (1, 'Rakesh', 'CSE'),
    -> (2, 'Mahesh','SCE'),
    -> (3, 'Karan', 'ECE'),
    -> (4, 'Ashwani', 'CSA');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from students;
+------------+---------+------------+
| student_id | Name    | department |
+------------+---------+------------+
|          1 | Rakesh  | CSE        |
|          2 | Mahesh  | SCE        |
|          3 | Karan   | ECE        |
|          4 | Ashwani | CSA        |
+------------+---------+------------+
4 rows in set (0.00 sec)

mysql> insert into Marks values
    -> (1, 'DBMS',85),
    -> (2,, 'DBMS',65),
    -> (3, 'DBMSS',99),
    -> (4,'RDBMS',50);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', 'DBMS',65),
(3, 'DBMSS',99),
(4,'RDBMS',50)' at line 3
mysql> insert into Marks values
    -> (1,'DBMS',85);
Query OK, 1 row affected (0.05 sec)

mysql> insert into Marks values
    -> (2,'DBMS',65),
    -> (3, 'DBMSS',99),
    -> (4,'RDBMS',50);
Query OK, 3 rows affected (0.05 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> SELEECT * FROM MARKS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELEECT * FROM MARKS' at line 1
mysql> SELECT * FROM MARKS;
+------------+---------+-------+
| student_id | subject | marks |
+------------+---------+-------+
|          1 | DBMS    |    85 |
|          2 | DBMS    |    65 |
|          3 | DBMSS   |    99 |
|          4 | RDBMS   |    50 |
+------------+---------+-------+
4 rows in set (0.00 sec)

mysql> ## STORED PROCEDURE
mysql> CREATE PROCEDURE PASSED_STUDENTS()
    -> BEGIN
    ->     SELECT S.STUDENT_ID, S.NAME, M.MARKS
    ->     FROM STUDENTS S
    ->     JOIN MARKS M
    ->         ON S.STUDENT_ID = M.STUDENT_ID
    ->     WHERE M.MARKS >= 50;
    -> END $$
Query OK, 0 rows affected (0.06 sec)

mysql>
mysql> DELIMITER ;
mysql>

mysql> #### CALL PROCEDURE

mysql> CALL PASSED_STUDENTS();
+------------+---------+-------+
| STUDENT_ID | NAME    | MARKS |
+------------+---------+-------+
|          1 | Rakesh  |    85 |
|          2 | Mahesh  |    65 |
|          3 | Karan   |    99 |
|          4 | Ashwani |    50 |
+------------+---------+-------+
4 rows in set (0.06 sec)

Query OK, 0 rows affected (0.07 sec)




-- CREATE TRIGGER###########################

mysql> DELIMITER $$
mysql> CREATE TRIGGER CHECK_MARKS
    -> BEFORE INSERT ON MARKS
    -> FOR EACH ROW
    -> BEGIN
    -> IF New.marks > 100 THEN
    -> SIGNAL SQLSTATE '45000'
    -> SET MESSAGE_TEXT = 'marks cannot exceed 100'
    -> ;
    -> END IF;
    -> END$$
Query OK, 0 rows affected (0.10 sec)

mysql> DELIMITER ;
mysql> INSERT INTO MARKS VALUES (5,'dbms',120);
ERROR 1644 (45000): marks cannot exceed 100
mysql>

