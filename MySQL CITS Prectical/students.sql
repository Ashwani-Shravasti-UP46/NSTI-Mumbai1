show databases;
create database student;
use student;
create table student (
    student_id int primary key,
    student_name varchar(50),
    age int,
    gp_name varchar(50), 
    grade_percent int);
+-------------+------------+
select * from student;
insert into student (student_id, student_name, age, gp_name, grade_percent) 
values (1001, 'NAVANEET', 20, 'SCIENCE_CS', 89),
       (1002, 'AMIT', 21, 'SCIENCE_BS', 92),
       (1003, 'SNEHA', 19, 'SCIENCE_BIO', 85),
       (1004, 'RAHUL', 22, 'COMMERCE', 78),
       (1005, 'PRIYA', 20, 'HUMANITIES', 88),
       (1006, 'VIKAS', 23, 'SCIENCE_CS', 95),
       (1007, 'ANITA', 21, 'COMMERCE', 73),
       (1008, 'RAVI', 20, 'HUMANITIES', 90),
       (1009, 'MEERA', 19, 'SCIENCE_BIO', 87),
            (1010, 'KARAN', 22, 'SCIENCE_CS', 91),
            (1011, 'TINA', 20, 'COMMERCE', 79),
            (1012, 'RAJ', 21, 'HUMANITIES', 84),
            (1013, 'SIMA', 19, 'SCIENCE_BIO', 98),
            (1014, 'AJAY', 23, 'SCIENCE_CS', 93),
            (1015, 'NISHA', 20, 'COMMERCE', 81),
            (1016, 'VANDAN', 21, 'HUMANITIES', 86),
            (1017, 'DEEPA', 19, 'SCIENCE_BIO', 90),
            (1018, 'RAJAT', 22, 'SCIENCE_CS', 64),
            (1019, 'SONIA', 20, 'COMMERCE', 77),
            (1020, 'MANISH', 21, 'HUMANITIES', 83);
+------------+--------------+-----+------------+---------------+
select * from student;
+------------+--------------+-----+------------+---------------+
| student_id | student_name | age | gp_name    | grade_percent |
+------------+--------------+-----+------------+---------------+    
|       1001 | NAVANEET     |  20 | SCIENCE_CS |            89 |
|       1002 | AMIT         |  21 | SCIENCE_BS |            92 |
|       1003 | SNEHA        |  19 | SCIENCE_BIO|            85 |
|       1004 | RAHUL        |  22 | COMMERCE   |            78 |
|       1005 | PRIYA        |  20 | HUMANITIES |            88 |
|       1006 | VIKAS        |  23 | SCIENCE_CS |            95 |
|       1007 | ANITA        |  21 | COMMERCE   |            73 |
|       1008 | RAVI         |  20 | HUMANITIES |            90 |
|       1009 | MEERA        |  19 | SCIENCE_BIO|            87 |
|       1010 | KARAN        |  22 | SCIENCE_CS |            91 |
|       1011 | TINA         |  20 | COMMERCE   |             79 |
|       1012 | RAJ          |  21 | HUMANITIES |             84 |
|       1013 | SIMA         |  19 | SCIENCE_BIO|             98 |
|       1014 | AJAY         |  23 | SCIENCE_CS |             93 |
|       1015 | NISHA        |  20 | COMMERCE   |             81 |
|       1016 | VANDAN       |  21 | HUMANITIES |             86 |
|       1017 | DEEPA        |  19 | SCIENCE_BIO|             90 |
|       1018 | RAJAT        |  22 | SCIENCE_CS |             64 |
|       1019 | SONIA        |  20 | COMMERCE   |             77 |
|       1020 | MANISH       |  21 | HUMANITIES |             83 |
+------------+--------------+-----+------------+---------------+
Q. Display the student_id,student_name and sex of all students.
              select student_id, student_name, gp_name from student;
+------------+--------------+-------------+
| student_id | student_name | gp_name     |
+------------+--------------+-------------+
|       1001 | NAVANEET     | SCIENCE_CS  |
|       1002 | AMIT         | SCIENCE_BS  |
|       1003 | SNEHA        | SCIENCE_BIO |
|       1004 | RAHUL        | COMMERCE    |
|       1005 | PRIYA        | HUMANITIES  |
|       1006 | VIKAS        | SCIENCE_CS  |
|       1007 | ANITA        | COMMERCE    |
|       1008 | RAVI         | HUMANITIES  |
|       1009 | MEERA        | SCIENCE_BIO |
|       1010 | KARAN        | SCIENCE_CS  |
|       1011 | TINA         | COMMERCE    |
|       1012 | RAJ          | HUMANITIES  |
|       1013 | SIMA         | SCIENCE_BIO |
|       1014 | AJAY         | SCIENCE_CS  |
|       1015 | NISHA        | COMMERCE    |
|       1016 | VANDAN       | HUMANITIES  |
|       1017 | DEEPA        | SCIENCE_BIO |
|       1018 | RAJAT        | SCIENCE_CS  |
|       1019 | SONIA        | COMMERCE    |
|       1020 | MANISH       | HUMANITIES  |
+------------+--------------+-------------+
20 rows in set (0.00 sec)

Q. Display the details of students who have scored more than 85%.
               mysql> select * from student where grade_percent > 85;
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1001 | NAVANEET     |   20 | SCIENCE_CS  |            89 |
|       1002 | AMIT         |   21 | SCIENCE_BS  |            92 |
|       1005 | PRIYA        |   20 | HUMANITIES  |            88 |
|       1006 | VIKAS        |   23 | SCIENCE_CS  |            95 |
|       1008 | RAVI         |   20 | HUMANITIES  |            90 |
|       1009 | MEERA        |   19 | SCIENCE_BIO |            87 |
|       1010 | KARAN        |   22 | SCIENCE_CS  |            91 |
|       1013 | SIMA         |   19 | SCIENCE_BIO |            98 |
|       1014 | AJAY         |   23 | SCIENCE_CS  |            93 |
|       1016 | VANDAN       |   21 | HUMANITIES  |            86 |
|       1017 | DEEPA        |   19 | SCIENCE_BIO |            90 |
+------------+--------------+------+-------------+---------------+
11 rows in set (0.05 sec)

Q. Display the details of students who are in the 'SCIENCE_CS' group.
                mysql> select * from student where gp_name = 'SCIENCE_CS';
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1001 | NAVANEET     |   20 | SCIENCE_CS |            89 |
|       1006 | VIKAS        |   23 | SCIENCE_CS |            95 |
|       1010 | KARAN        |   22 | SCIENCE_CS |            91 |
|       1014 | AJAY         |   23 | SCIENCE_CS |            93 |
|       1018 | RAJAT        |   22 | SCIENCE_CS |            64 |
+------------+--------------+------+------------+---------------+
5 rows in set (0.05 sec)
            
Q. Display the details of students whose names start with 'A'.
                
mysql> SELECT * FROM STUDENT WHERE STUDENT_NAME LIKE 'A%';
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1002 | AMIT         |   21 | SCIENCE_BS |            92 |
|       1007 | ANITA        |   21 | COMMERCE   |            73 |
|       1014 | AJAY         |   23 | SCIENCE_CS |            93 |
+------------+--------------+------+------------+---------------+
3 rows in set (0.01 sec)


Q. Display the details of students who are older than 20 years.
                
mysql> SELECT * FROM STUDENT WHERE  AGE > 20;
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1002 | AMIT         |   21 | SCIENCE_BS |            92 |
|       1004 | RAHUL        |   22 | COMMERCE   |            78 |
|       1006 | VIKAS        |   23 | SCIENCE_CS |            95 |
|       1007 | ANITA        |   21 | COMMERCE   |            73 |
|       1010 | KARAN        |   22 | SCIENCE_CS |            91 |
|       1012 | RAJ          |   21 | HUMANITIES |            84 |
|       1014 | AJAY         |   23 | SCIENCE_CS |            93 |
|       1016 | VANDAN       |   21 | HUMANITIES |            86 |
|       1018 | RAJAT        |   22 | SCIENCE_CS |            64 |
|       1020 | MANISH       |   21 | HUMANITIES |            83 |
+------------+--------------+------+------------+---------------+
10 rows in set (0.00 sec)


Q. Display the details of students who have scored between 80% and 90%.
                
mysql> SELECT * FROM STUDENT WHERE  AGE > 20;
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1002 | AMIT         |   21 | SCIENCE_BS |            92 |
|       1004 | RAHUL        |   22 | COMMERCE   |            78 |
|       1006 | VIKAS        |   23 | SCIENCE_CS |            95 |
|       1007 | ANITA        |   21 | COMMERCE   |            73 |
|       1010 | KARAN        |   22 | SCIENCE_CS |            91 |
|       1012 | RAJ          |   21 | HUMANITIES |            84 |
|       1014 | AJAY         |   23 | SCIENCE_CS |            93 |
|       1016 | VANDAN       |   21 | HUMANITIES |            86 |
|       1018 | RAJAT        |   22 | SCIENCE_CS |            64 |
|       1020 | MANISH       |   21 | HUMANITIES |            83 |
+------------+--------------+------+------------+---------------+
10 rows in set (0.00 sec)

Q. Display the details of students who are in the 'COMMERCE' group and have scored more than 75%.
                   -> ^C
          mysql> SELECT * FROM STUDENT WHERE GP_NAME = 'COMMERCE' AND GRADE_PERCENT > 70;
+------------+--------------+------+----------+---------------+
| student_id | student_name | age  | gp_name  | grade_percent |
+------------+--------------+------+----------+---------------+
|       1004 | RAHUL        |   22 | COMMERCE |            78 |
|       1007 | ANITA        |   21 | COMMERCE |            73 |
|       1011 | TINA         |   20 | COMMERCE |            79 |
|       1015 | NISHA        |   20 | COMMERCE |            81 |
|       1019 | SONIA        |   20 | COMMERCE |            77 |
+------------+--------------+------+----------+---------------+
5 rows in set (0.00 sec)

      mysql> SELECT * FROM STUDENT WHERE GP_NAME = 'COMMERCE' AND GRADE_PERCENT > 75;
+------------+--------------+------+----------+---------------+
| student_id | student_name | age  | gp_name  | grade_percent |
+------------+--------------+------+----------+---------------+
|       1004 | RAHUL        |   22 | COMMERCE |            78 |
|       1011 | TINA         |   20 | COMMERCE |            79 |
|       1015 | NISHA        |   20 | COMMERCE |            81 |
|       1019 | SONIA        |   20 | COMMERCE |            77 |
+------------+--------------+------+----------+---------------+
4 rows in set (0.00 sec)

Q. Display the details of students whose names contain the letter 'E'.
               mysql> SELECT * FROM STUDENT WHERE STUDENT_NAME LIKE '%E%';
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1001 | NAVANEET     |   20 | SCIENCE_CS  |            89 |
|       1003 | SNEHA        |   19 | SCIENCE_BIO |            85 |
|       1009 | MEERA        |   19 | SCIENCE_BIO |            87 |
|       1017 | DEEPA        |   19 | SCIENCE_BIO |            90 |
+------------+--------------+------+-------------+---------------+
4 rows in set (0.00 sec)
  
                
Q. Display the details of students who are 20 years old and belong to the 'HUMANITIES' group.             
     mysql> SELECT * FROM STUDENT WHERE AGE = 20 AND GP_NAME = 'HUMANITIES';
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1005 | PRIYA        |   20 | HUMANITIES |            88 |
|       1008 | RAVI         |   20 | HUMANITIES |            90 |
+------------+--------------+------+------------+---------------+
2 rows in set (0.00 sec)


Q. Display the details of students who have scored less than 70%.
      mysql> SELECT * FROM STUDENT WHERE GRADE_PERCENT < 70;
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1018 | RAJAT        |   22 | SCIENCE_CS |            64 |
+------------+--------------+------+------------+---------------+
1 row in set (0.00 sec)


Q. Display the details of students who are in the 'SCIENCE_BIO' group and have scored more than 90%.
         mysql> SELECT * FROM STUDENT WHERE GP_NAME = 'SCIENCE_BIO';
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1003 | SNEHA        |   19 | SCIENCE_BIO |            85 |
|       1009 | MEERA        |   19 | SCIENCE_BIO |            87 |
|       1013 | SIMA         |   19 | SCIENCE_BIO |            98 |
|       1017 | DEEPA        |   19 | SCIENCE_BIO |            90 |
+------------+--------------+------+-------------+---------------+
4 rows in set (0.00 sec)

Q. Display the details of students who are in the 'HUMANITIES' group or have scored more than 90%.
                mysql> select * from student where gp_name = 'HUMANITIES' or grade_percent > 90;
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1002 | AMIT         |   21 | SCIENCE_BS  |            92 |
|       1005 | PRIYA        |   20 | HUMANITIES  |            88 |
|       1006 | VIKAS        |   23 | SCIENCE_CS  |            95 |
|       1008 | RAVI         |   20 | HUMANITIES  |            90 |
|       1010 | KARAN        |   22 | SCIENCE_CS  |            91 |
|       1012 | RAJ          |   21 | HUMANITIES  |            84 |
|       1013 | SIMA         |   19 | SCIENCE_BIO |            98 |
|       1014 | AJAY         |   23 | SCIENCE_CS  |            93 |
|       1016 | VANDAN       |   21 | HUMANITIES  |            86 |
|       1020 | MANISH       |   21 | HUMANITIES  |            83 |
+------------+--------------+------+-------------+---------------+
10 rows in set (0.00 sec)

Q. Display the details of students who are in the 'COMMERCE' group or have scored less than 80%.
                
mysql> select * from student where gp_name = 'COMMERCE' or grade_percent < 80;
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1004 | RAHUL        |   22 | COMMERCE   |            78 |
|       1007 | ANITA        |   21 | COMMERCE   |            73 |
|       1011 | TINA         |   20 | COMMERCE   |            79 |
|       1015 | NISHA        |   20 | COMMERCE   |            81 |
|       1018 | RAJAT        |   22 | SCIENCE_CS |            64 |
|       1019 | SONIA        |   20 | COMMERCE   |            77 |
+------------+--------------+------+------------+---------------+
6 rows in set (0.00 sec)

Q. Display the details of students who are older than 22 years or belong to the 'SCIENCE_CS' group.
                
mysql>  select * from student where age > 22 or gp_name = 'SCIENCE_CS';
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1001 | NAVANEET     |   20 | SCIENCE_CS |            89 |
|       1006 | VIKAS        |   23 | SCIENCE_CS |            95 |
|       1010 | KARAN        |   22 | SCIENCE_CS |            91 |
|       1014 | AJAY         |   23 | SCIENCE_CS |            93 |
|       1018 | RAJAT        |   22 | SCIENCE_CS |            64 |
+------------+--------------+------+------------+---------------+
5 rows in set (0.00 sec)

Q. Display the details of students who are 21 years old or belong to the 'SCIENCE_BS' group.
               
mysql> select * from student where age = 21 or gp_name = 'SCIENCE_BS';
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1002 | AMIT         |   21 | SCIENCE_BS |            92 |
|       1007 | ANITA        |   21 | COMMERCE   |            73 |
|       1012 | RAJ          |   21 | HUMANITIES |            84 |
|       1016 | VANDAN       |   21 | HUMANITIES |            86 |
|       1020 | MANISH       |   21 | HUMANITIES |            83 |
+------------+--------------+------+------------+---------------+
5 rows in set (0.00 sec)

Q. Display the details of students who have scored exactly 85%.
             
mysql>  select * from student where grade_percent = 85;
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1003 | SNEHA        |   19 | SCIENCE_BIO |            85 |
+------------+--------------+------+-------------+---------------+
1 row in set (0.00 sec)

Q. Display the details of students who are younger than 21 years and have scored more than 80%.
            mysql>     select * from student where age < 21 and grade_percent > 80;
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1001 | NAVANEET     |   20 | SCIENCE_CS  |            89 |
|       1003 | SNEHA        |   19 | SCIENCE_BIO |            85 |
|       1005 | PRIYA        |   20 | HUMANITIES  |            88 |
|       1008 | RAVI         |   20 | HUMANITIES  |            90 |
|       1009 | MEERA        |   19 | SCIENCE_BIO |            87 |
|       1013 | SIMA         |   19 | SCIENCE_BIO |            98 |
|       1015 | NISHA        |   20 | COMMERCE    |            81 |
|       1017 | DEEPA        |   19 | SCIENCE_BIO |            90 |
+------------+--------------+------+-------------+---------------+
8 rows in set (0.00 sec)

Q. Display the details of students whose names start with 'R' and have scored more than 85%.
               
mysql> select * from student where student_name like 'R%' and grade_percent > 85;
+------------+--------------+------+------------+---------------+
| student_id | student_name | age  | gp_name    | grade_percent |
+------------+--------------+------+------------+---------------+
|       1008 | RAVI         |   20 | HUMANITIES |            90 |
+------------+--------------+------+------------+---------------+
1 row in set (0.00 sec)


Q. Display the average grade percentage of all students.
               mysql>
mysql>  select avg(grade_percent) as average_grade from student;
+---------------+
| average_grade |
+---------------+
|       85.1500 |
+---------------+
1 row in set (0.03 sec)

            +------------+--------------+-----+------------+---------------+
            Display the details of student where student_id is between 1005 and 1015.
              mysql>  select * from student where student_id between 1005 and 1015;
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1005 | PRIYA        |   20 | HUMANITIES  |            88 |
|       1006 | VIKAS        |   23 | SCIENCE_CS  |            95 |
|       1007 | ANITA        |   21 | COMMERCE    |            73 |
|       1008 | RAVI         |   20 | HUMANITIES  |            90 |
|       1009 | MEERA        |   19 | SCIENCE_BIO |            87 |
|       1010 | KARAN        |   22 | SCIENCE_CS  |            91 |
|       1011 | TINA         |   20 | COMMERCE    |            79 |
|       1012 | RAJ          |   21 | HUMANITIES  |            84 |
|       1013 | SIMA         |   19 | SCIENCE_BIO |            98 |
|       1014 | AJAY         |   23 | SCIENCE_CS  |            93 |
|       1015 | NISHA        |   20 | COMMERCE    |            81 |
+------------+--------------+------+-------------+---------------+
11 rows in set (0.05 sec)

Q.  Display sum of grade_percent of all students.
            mysql>  select sum(grade_percent) as total_grade from student;
+-------------+
| total_grade |
+-------------+
|        1703 |
+-------------+
1 row in set (0.00 sec)

Q.   Display the details of students ordered by grade_percent in descending order.
               
mysql>  select * from student order by grade_percent desc;
+------------+--------------+------+-------------+---------------+
| student_id | student_name | age  | gp_name     | grade_percent |
+------------+--------------+------+-------------+---------------+
|       1013 | SIMA         |   19 | SCIENCE_BIO |            98 |
|       1006 | VIKAS        |   23 | SCIENCE_CS  |            95 |
|       1014 | AJAY         |   23 | SCIENCE_CS  |            93 |
|       1002 | AMIT         |   21 | SCIENCE_BS  |            92 |
|       1010 | KARAN        |   22 | SCIENCE_CS  |            91 |
|       1008 | RAVI         |   20 | HUMANITIES  |            90 |
|       1017 | DEEPA        |   19 | SCIENCE_BIO |            90 |
|       1001 | NAVANEET     |   20 | SCIENCE_CS  |            89 |
|       1005 | PRIYA        |   20 | HUMANITIES  |            88 |
|       1009 | MEERA        |   19 | SCIENCE_BIO |            87 |
|       1016 | VANDAN       |   21 | HUMANITIES  |            86 |
|       1003 | SNEHA        |   19 | SCIENCE_BIO |            85 |
|       1012 | RAJ          |   21 | HUMANITIES  |            84 |
|       1020 | MANISH       |   21 | HUMANITIES  |            83 |
|       1015 | NISHA        |   20 | COMMERCE    |            81 |
|       1011 | TINA         |   20 | COMMERCE    |            79 |
|       1004 | RAHUL        |   22 | COMMERCE    |            78 |
|       1019 | SONIA        |   20 | COMMERCE    |            77 |
|       1007 | ANITA        |   21 | COMMERCE    |            73 |
|       1018 | RAJAT        |   22 | SCIENCE_CS  |            64 |
+------------+--------------+------+-------------+---------------+
20 rows in set (0.00 sec)


Q.  Display the maximum grade_percent obtained by any student.
                mysql> select max(grade_percent) as max_grade from student;
+-----------+
| max_grade |
+-----------+
|        98 |
+-----------+
1 row in set (0.05 sec)

Q.  Display the minimum grade_percent obtained by any student.
              
mysql>   select min(grade_percent) as min_grade from student;
+-----------+
| min_grade |
+-----------+
|        64 |
+-----------+
1 row in set (0.05 sec)

Q.  Display the count of students in each gp_name.
              
mysql>   select gp_name, count(*) as student_count from student group by gp_name;
+-------------+---------------+
| gp_name     | student_count |
+-------------+---------------+
| SCIENCE_CS  |             5 |
| SCIENCE_BS  |             1 |
| SCIENCE_BIO |             4 |
| COMMERCE    |             5 |
| HUMANITIES  |             5 |
+-------------+---------------+
5 rows in set (0.01 sec)



+------------+--------------+-----+------------+---------------+
| student_id | student_name | age | gp_name    | grade_percent |
+------------+--------------+-----+------------+---------------+
|       1001 | NAVANEET     |  20 | SCIENCE_CS |            89 |
|       1002 | AMIT         |  21 | SCIENCE_BS |            92 |
|       1003 | SNEHA        |  19 | SCIENCE_BIO|            85 |
|       1004 | RAHUL        |  22 | COMMERCE   |            78 |
|       1005 | PRIYA        |  20 | HUMANITIES |            88 |
|       1006 | VIKAS        |  23 | SCIENCE_CS |            95 |
|       1007 | ANITA        |  21 | COMMERCE   |            73 |
|       1008 | RAVI         |  20 | HUMANITIES |            90 |
|       1009 | MEERA        |  19 | SCIENCE_BIO|            87 |
|       1010 | KARAN        |  22 | SCIENCE_CS |            91 |
|       1011 | TINA         |  20 | COMMERCE   |            79 |
|       1012 | RAJ          |  21 | HUMANITIES |            84 |
|       1013 | SIMA         |  19 | SCIENCE_BIO|            98 |
|       1014 | AJAY         |  23 | SCIENCE_CS |            93 |
|       1015 | NISHA        |  20 | COMMERCE   |            81 |
|       1016 | VANDAN       |  21 | HUMANITIES |            86 |
|       1017 | DEEPA        |  19 | SCIENCE_BIO|            90 |
|       1018 | RAJAT        |  22 | SCIENCE_CS |            64 |
|       1019 | SONIA        |  20 | COMMERCE   |            77 |   
|       1020 | MANISH       |  21 | HUMANITIES |            83 |
+------------+--------------+-----+------------+---------------+
20 rows in set (0.00 sec)




