
mysql> create database Librery;
Query OK, 1 row affected (0.05 sec)

mysql> use Librery;
Database changed
mysql> create table books(
    -> book_id int primary key,
    -> Title varchar(100),
    -> Author varchar(60),
    -> Copies int);
Query OK, 0 rows affected (0.08 sec)

mysql> ####Issue table ####
mysql> create table Members(
    -> menber_id int primary key,
    -> member_Name varchar(80)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> show tables;
+-------------------+
| Tables_in_librery |
+-------------------+
| books             |
| members           |
+-------------------+
2 rows in set (0.00 sec)

mysql>


 