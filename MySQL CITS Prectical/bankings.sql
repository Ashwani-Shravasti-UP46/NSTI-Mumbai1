mysql> show databases;
+------------------------+
| Database               |
+------------------------+
| ashwani                |
| collega                |
| information_schema     |
| mysql                  |
| nsti                   |
| performance_schema     |
| pg101_storedprocedures |
| record                 |
| sys                    |
| test                   |
+------------------------+
10 rows in set (0.33 sec)

mysql> use collega;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_collega |
+-------------------+
| marks             |
| students          |
+-------------------+
2 rows in set (0.08 sec)

mysql> create database bank;
Query OK, 1 row affected (0.10 sec)

mysql> use bank;
Database changed
mysql> create table accounts(
    -> acc_no int primary key,
    -> customer_Name varchar(50),
    -> balance int);
Query OK, 0 rows affected (0.21 sec)

mysql> create table transactions(
    -> txn_id int auto_increment primary key,
    -> acc_no int,
    -> amount int,
    -> txn_date date);
Query OK, 0 rows affected (0.11 sec)

mysql> show tables;
+----------------+
| Tables_in_bank  |
+----------------+
| accounts       |
| transactions   |
+----------------+
2 rows in set (0.00 sec)


mysql> insert into accounts values
    -> (101,'Alice',10000),
    -> (102,'Bob',8000),
    -> (103,'Rahul',9000),
    -> (104,'Manisha',7000);
Query OK, 4 rows affected (0.07 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from accounts;
+--------+---------------+---------+
| acc_no | customer_Name | balance |
+--------+---------------+---------+
|    101 | Alice         |   10000 |
|    102 | Bob           |    8000 |
|    103 | Rahul         |    9000 |
|    104 | Manisha       |    7000 |
+--------+---------------+---------+
4 rows in set (0.04 sec)


mysql> #############CREATED STORED PROCEDURE############
mysql>

mysql> DELIMITER $$
mysql>
mysql> CREATE PROCEDURE deposit_money(
    ->     IN p_acc_no INT,
    ->     IN p_amount INT
    -> )
    -> BEGIN
    ->     UPDATE accounts
    ->     SET balance = balance + p_amount
    ->     WHERE acc_no = p_acc_no;
    ->
    ->     INSERT INTO transactions(
    ->         acc_no, txn_type, amount, txn_date
    ->     )
    ->     VALUES (
    ->         p_acc_no, 'Deposit', p_amount, CURDATE()
    ->     );
    -> END$$
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> DELIMITER ;
mysql>
mysql> ###########CALL STORED PROCEDURE##############
mysql>
mysql> CALL deposit_money(101, 5000);
Query OK, 1 row affected (0.00 sec)

mysql>select * from transactions;

mysql> select * from transactions;
+--------+--------+--------+------------+----------+
| txn_id | acc_no | amount | txn_date   | txn_type |
+--------+--------+--------+------------+----------+
|      1 |    101 |   5000 | 2026-02-11 | Deposit  |
+--------+--------+--------+------------+----------+
1 row in set (0.00 sec)

 ############TRIGGERS##################
mysql>
mysql> ############CREATE TRIGGER##################
mysql>
mysql> DELIMITER @@
mysql> CREATE TRIGGER check_balance
    -> BEFORE INSERT ON TRANSACTIONS
    -> FOR EACH ROW
    -> BEGIN
    -> IF New.txn_type = 'Withdrw' THEN
    -> IF (SELECT BALANCE
    -> FROM ACCUNTS
    -> WHERE acc_no = New.acc_no) < New.amount THEN
    -> SIGNAL SQLSTATE '45000'
    -> SET Message_Text = 'Insufficient balance';
    -> END IF;
    -> END IF;
    -> END@@
Query OK, 0 rows affected (0.10 sec)

mysql> DELIMITER ;
mysql> INSERT INTO transactions
    -> (acc_no, txn_type, amount, txn_date)
    -> VALUES (103, 'WITHDRAW', 7000, CURDATE());
Query OK, 1 row affected (0.01 sec)

mysql> select * from transactions;
+--------+--------+--------+------------+----------+   
| txn_id | acc_no | amount | txn_date   | txn_type |
+--------+--------+--------+------------+----------+
|      1 |    101 |   5000 | 2026-02-11 | Deposit  |
|      2 |    103 |   7000 | 2026-02-11 | WITHDRAW |
+--------+--------+--------+------------+----------+


mysql> ###################CURSORE#####################mysql>

mysql> DELIMITER !!
mysql>
mysql> CREATE PROCEDURE show_customers()
    ->   BEGIN
    ->   DECLARE done INT DEFAULT 0;
    ->   DECLARE cname VARCHAR(50); 
    ->   DECLARE cur_accounts CURSOR FOR
    ->   SELECT customer_name
    ->   FROM accounts;
    ->   DECLARE CONTINUE HANDLER
    ->   FOR NOT FOUND SET done = 1;
    ->   OPEN cur_accounts;
    ->   read_loop: LOOP
    ->   FETCH cur_accounts INTO cname;
    ->   IF done = 1 THEN
    ->   LEAVE read_loop;
    ->   END IF;
    ->   SELECT cname AS Customer_Name;
    ->   END LOOP;
    ->   CLOSE cur_accounts;
    ->   END!!
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL  show_customers();
+---------------+
| Customer_Name |
+---------------+
| Alice         |
+---------------+
1 row in set (0.05 sec)

+---------------+
| Customer_Name |
+---------------+
| Bob           |
+---------------+
1 row in set (0.06 sec)

+---------------+
| Customer_Name |
+---------------+
| Rahul         |
+---------------+
1 row in set (0.06 sec)

+---------------+
| Customer_Name |
+---------------+
| Manisha       |
+---------------+
1 row in set (0.07 sec)

Query OK, 0 rows affected (0.07 sec)

mysql>

