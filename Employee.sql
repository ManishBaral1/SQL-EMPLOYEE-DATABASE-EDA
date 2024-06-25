kalikali@kalikali-ThinkPad-L13-Gen-2:~$ sudo mysql
[sudo] password for kalikali: 
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.37-0ubuntu0.20.04.3 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE employee_db;
Query OK, 1 row affected (0,01 sec)

mysql> USE employee_db;
Database changed
mysql> CREATE TABLE employee (
    ->     id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(255),
    ->     age INT,
    ->     salary DECIMAL(10, 2),
    ->     gender VARCHAR(10),
    ->     department VARCHAR(255),
    ->     position VARCHAR(255),
    ->     hire_date DATE
    -> );
Query OK, 0 rows affected (0,02 sec)

mysql> 
mysql> INSERT INTO employee (name, age, salary, gender, department, position, hire_date) VALUES
    -> ('Alice', 30, 70000, 'Female', 'IT', 'Developer', '2020-01-15'),
    -> ('Bob', 24, 48000, 'Male', 'HR', 'Recruiter', '2019-11-01'),
    -> ('Carol', 45, 110000, 'Female', 'Finance', 'Manager', '2015-03-30'),
    -> ('David', 35, 90000, 'Male', 'IT', 'Developer', '2017-08-21'),
    -> ('Eve', 29, 65000, 'Female', 'Marketing', 'Specialist', '2021-06-10'),
    -> ('Frank', 50, 120000, 'Male', 'Operations', 'Manager', '2010-07-19'),
    -> ('Grace', 27, 52000, 'Female', 'IT', 'Analyst', '2020-09-23'),
    -> ('Hank', 33, 75000, 'Male', 'IT', 'Developer', '2018-04-11'),
    -> ('Ivy', 42, 105000, 'Female', 'Finance', 'Analyst', '2016-05-16'),
    -> ('Jack', 38, 95000, 'Male', 'Marketing', 'Manager', '2014-02-14'),
    -> ('Kate', 28, 68000, 'Female', 'HR', 'Specialist', '2021-11-05'),
    -> ('Leo', 36, 87000, 'Male', 'Operations', 'Coordinator', '2013-01-30'),
    -> ('Mona', 31, 72000, 'Female', 'IT', 'Developer', '2018-08-02'),
    -> ('Nate', 47, 115000, 'Male', 'Finance', 'Manager', '2009-06-12'),
    -> ('Olivia', 26, 55000, 'Female', 'Marketing', 'Coordinator', '2020-12-04'),
    -> ('Paul', 44, 102000, 'Male', 'IT', 'Analyst', '2017-10-09'),
    -> ('Quincy', 29, 66000, 'Male', 'HR', 'Recruiter', '2019-09-18'),
    -> ('Rachel', 37, 92000, 'Female', 'Finance', 'Analyst', '2015-11-22'),
    -> ('Steve', 40, 98000, 'Male', 'Operations', 'Manager', '2012-03-05'),
    -> ('Tina', 32, 74000, 'Female', 'IT', 'Developer', '2019-07-28');
Query OK, 20 rows affected (0,01 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql> 
mysql> CREATE TABLE department (
    ->     dept_name VARCHAR(255) PRIMARY KEY,
    ->     dept_head VARCHAR(255)
    -> );
Query OK, 0 rows affected (0,01 sec)

mysql> 
mysql> INSERT INTO department (dept_name, dept_head) VALUES
    -> ('IT', 'Alice'),
    -> ('HR', 'Bob'),
    -> ('Finance', 'Carol'),
    -> ('Marketing', 'Jack'),
    -> ('Operations', 'Frank');
Query OK, 5 rows affected (0,00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employee;
+----+--------+------+-----------+--------+------------+-------------+------------+
| id | name   | age  | salary    | gender | department | position    | hire_date  |
+----+--------+------+-----------+--------+------------+-------------+------------+
|  1 | Alice  |   30 |  70000.00 | Female | IT         | Developer   | 2020-01-15 |
|  2 | Bob    |   24 |  48000.00 | Male   | HR         | Recruiter   | 2019-11-01 |
|  3 | Carol  |   45 | 110000.00 | Female | Finance    | Manager     | 2015-03-30 |
|  4 | David  |   35 |  90000.00 | Male   | IT         | Developer   | 2017-08-21 |
|  5 | Eve    |   29 |  65000.00 | Female | Marketing  | Specialist  | 2021-06-10 |
|  6 | Frank  |   50 | 120000.00 | Male   | Operations | Manager     | 2010-07-19 |
|  7 | Grace  |   27 |  52000.00 | Female | IT         | Analyst     | 2020-09-23 |
|  8 | Hank   |   33 |  75000.00 | Male   | IT         | Developer   | 2018-04-11 |
|  9 | Ivy    |   42 | 105000.00 | Female | Finance    | Analyst     | 2016-05-16 |
| 10 | Jack   |   38 |  95000.00 | Male   | Marketing  | Manager     | 2014-02-14 |
| 11 | Kate   |   28 |  68000.00 | Female | HR         | Specialist  | 2021-11-05 |
| 12 | Leo    |   36 |  87000.00 | Male   | Operations | Coordinator | 2013-01-30 |
| 13 | Mona   |   31 |  72000.00 | Female | IT         | Developer   | 2018-08-02 |
| 14 | Nate   |   47 | 115000.00 | Male   | Finance    | Manager     | 2009-06-12 |
| 15 | Olivia |   26 |  55000.00 | Female | Marketing  | Coordinator | 2020-12-04 |
| 16 | Paul   |   44 | 102000.00 | Male   | IT         | Analyst     | 2017-10-09 |
| 17 | Quincy |   29 |  66000.00 | Male   | HR         | Recruiter   | 2019-09-18 |
| 18 | Rachel |   37 |  92000.00 | Female | Finance    | Analyst     | 2015-11-22 |
| 19 | Steve  |   40 |  98000.00 | Male   | Operations | Manager     | 2012-03-05 |
| 20 | Tina   |   32 |  74000.00 | Female | IT         | Developer   | 2019-07-28 |
+----+--------+------+-----------+--------+------------+-------------+------------+
20 rows in set (0,00 sec)

mysql> SELECT COUNT(*) AS total_employees FROM employee;
+-----------------+
| total_employees |
+-----------------+
|              20 |
+-----------------+
1 row in set (0,01 sec)

mysql> SELECT AVG(salary) AS average_salary FROM employee;
+----------------+
| average_salary |
+----------------+
|   82950.000000 |
+----------------+
1 row in set (0,00 sec)

mysql> SELECT * FROM employee WHERE salary > 80000;
+----+--------+------+-----------+--------+------------+-------------+------------+
| id | name   | age  | salary    | gender | department | position    | hire_date  |
+----+--------+------+-----------+--------+------------+-------------+------------+
|  3 | Carol  |   45 | 110000.00 | Female | Finance    | Manager     | 2015-03-30 |
|  4 | David  |   35 |  90000.00 | Male   | IT         | Developer   | 2017-08-21 |
|  6 | Frank  |   50 | 120000.00 | Male   | Operations | Manager     | 2010-07-19 |
|  9 | Ivy    |   42 | 105000.00 | Female | Finance    | Analyst     | 2016-05-16 |
| 10 | Jack   |   38 |  95000.00 | Male   | Marketing  | Manager     | 2014-02-14 |
| 12 | Leo    |   36 |  87000.00 | Male   | Operations | Coordinator | 2013-01-30 |
| 14 | Nate   |   47 | 115000.00 | Male   | Finance    | Manager     | 2009-06-12 |
| 16 | Paul   |   44 | 102000.00 | Male   | IT         | Analyst     | 2017-10-09 |
| 18 | Rachel |   37 |  92000.00 | Female | Finance    | Analyst     | 2015-11-22 |
| 19 | Steve  |   40 |  98000.00 | Male   | Operations | Manager     | 2012-03-05 |
+----+--------+------+-----------+--------+------------+-------------+------------+
10 rows in set (0,00 sec)

mysql> SELECT department, COUNT(*) AS count FROM employee GROUP BY department;
+------------+-------+
| department | count |
+------------+-------+
| IT         |     7 |
| HR         |     3 |
| Finance    |     4 |
| Marketing  |     3 |
| Operations |     3 |
+------------+-------+
5 rows in set (0,00 sec)

mysql> SELECT e.name, e.department, d.dept_head 
    -> FROM employee e
    -> JOIN department d ON e.department = d.dept_name;
+--------+------------+-----------+
| name   | department | dept_head |
+--------+------------+-----------+
| Alice  | IT         | Alice     |
| Bob    | HR         | Bob       |
| Carol  | Finance    | Carol     |
| David  | IT         | Alice     |
| Eve    | Marketing  | Jack      |
| Frank  | Operations | Frank     |
| Grace  | IT         | Alice     |
| Hank   | IT         | Alice     |
| Ivy    | Finance    | Carol     |
| Jack   | Marketing  | Jack      |
| Kate   | HR         | Bob       |
| Leo    | Operations | Frank     |
| Mona   | IT         | Alice     |
| Nate   | Finance    | Carol     |
| Olivia | Marketing  | Jack      |
| Paul   | IT         | Alice     |
| Quincy | HR         | Bob       |
| Rachel | Finance    | Carol     |
| Steve  | Operations | Frank     |
| Tina   | IT         | Alice     |
+--------+------------+-----------+
20 rows in set (0,00 sec)

mysql> SELECT e.name, e.department, d.dept_head 
    -> FROM employee e
    -> LEFT JOIN department d ON e.department = d.dept_name;
+--------+------------+-----------+
| name   | department | dept_head |
+--------+------------+-----------+
| Alice  | IT         | Alice     |
| Bob    | HR         | Bob       |
| Carol  | Finance    | Carol     |
| David  | IT         | Alice     |
| Eve    | Marketing  | Jack      |
| Frank  | Operations | Frank     |
| Grace  | IT         | Alice     |
| Hank   | IT         | Alice     |
| Ivy    | Finance    | Carol     |
| Jack   | Marketing  | Jack      |
| Kate   | HR         | Bob       |
| Leo    | Operations | Frank     |
| Mona   | IT         | Alice     |
| Nate   | Finance    | Carol     |
| Olivia | Marketing  | Jack      |
| Paul   | IT         | Alice     |
| Quincy | HR         | Bob       |
| Rachel | Finance    | Carol     |
| Steve  | Operations | Frank     |
| Tina   | IT         | Alice     |
+--------+------------+-----------+
20 rows in set (0,00 sec)

mysql> SELECT e.name, e.department, d.dept_head 
    -> FROM employee e
    -> LEFT JOIN department d ON e.department = d.dept_name;
+--------+------------+-----------+
| name   | department | dept_head |
+--------+------------+-----------+
| Alice  | IT         | Alice     |
| Bob    | HR         | Bob       |
| Carol  | Finance    | Carol     |
| David  | IT         | Alice     |
| Eve    | Marketing  | Jack      |
| Frank  | Operations | Frank     |
| Grace  | IT         | Alice     |
| Hank   | IT         | Alice     |
| Ivy    | Finance    | Carol     |
| Jack   | Marketing  | Jack      |
| Kate   | HR         | Bob       |
| Leo    | Operations | Frank     |
| Mona   | IT         | Alice     |
| Nate   | Finance    | Carol     |
| Olivia | Marketing  | Jack      |
| Paul   | IT         | Alice     |
| Quincy | HR         | Bob       |
| Rachel | Finance    | Carol     |
| Steve  | Operations | Frank     |
| Tina   | IT         | Alice     |
+--------+------------+-----------+
20 rows in set (0,00 sec)

mysql> SELECT e.name, e.department, d.dept_head 
    -> FROM employee e
    -> LEFT JOIN department d ON e.department = d.dept_name;
+--------+------------+-----------+
| name   | department | dept_head |
+--------+------------+-----------+
| Alice  | IT         | Alice     |
| Bob    | HR         | Bob       |
| Carol  | Finance    | Carol     |
| David  | IT         | Alice     |
| Eve    | Marketing  | Jack      |
| Frank  | Operations | Frank     |
| Grace  | IT         | Alice     |
| Hank   | IT         | Alice     |
| Ivy    | Finance    | Carol     |
| Jack   | Marketing  | Jack      |
| Kate   | HR         | Bob       |
| Leo    | Operations | Frank     |
| Mona   | IT         | Alice     |
| Nate   | Finance    | Carol     |
| Olivia | Marketing  | Jack      |
| Paul   | IT         | Alice     |
| Quincy | HR         | Bob       |
| Rachel | Finance    | Carol     |
| Steve  | Operations | Frank     |
| Tina   | IT         | Alice     |
+--------+------------+-----------+
20 rows in set (0,00 sec)

mysql> SELECT name, department FROM employee WHERE department = 'IT'
    -> UNION
    -> SELECT name, department FROM employee WHERE department = 'HR';
+--------+------------+
| name   | department |
+--------+------------+
| Alice  | IT         |
| David  | IT         |
| Grace  | IT         |
| Hank   | IT         |
| Mona   | IT         |
| Paul   | IT         |
| Tina   | IT         |
| Bob    | HR         |
| Kate   | HR         |
| Quincy | HR         |
+--------+------------+
10 rows in set (0,00 sec)

mysql> SELECT e.name, e.department, d.dept_head 
    -> FROM employee e
    -> LEFT JOIN department d ON e.department = d.dept_name;
+--------+------------+-----------+
| name   | department | dept_head |
+--------+------------+-----------+
| Alice  | IT         | Alice     |
| Bob    | HR         | Bob       |
| Carol  | Finance    | Carol     |
| David  | IT         | Alice     |
| Eve    | Marketing  | Jack      |
| Frank  | Operations | Frank     |
| Grace  | IT         | Alice     |
| Hank   | IT         | Alice     |
| Ivy    | Finance    | Carol     |
| Jack   | Marketing  | Jack      |
| Kate   | HR         | Bob       |
| Leo    | Operations | Frank     |
| Mona   | IT         | Alice     |
| Nate   | Finance    | Carol     |
| Olivia | Marketing  | Jack      |
| Paul   | IT         | Alice     |
| Quincy | HR         | Bob       |
| Rachel | Finance    | Carol     |
| Steve  | Operations | Frank     |
| Tina   | IT         | Alice     |
+--------+------------+-----------+
20 rows in set (0,00 sec)

mysql> SELECT * FROM employee WHERE hire_date > '2018-01-01';
+----+--------+------+----------+--------+------------+-------------+------------+
| id | name   | age  | salary   | gender | department | position    | hire_date  |
+----+--------+------+----------+--------+------------+-------------+------------+
|  1 | Alice  |   30 | 70000.00 | Female | IT         | Developer   | 2020-01-15 |
|  2 | Bob    |   24 | 48000.00 | Male   | HR         | Recruiter   | 2019-11-01 |
|  5 | Eve    |   29 | 65000.00 | Female | Marketing  | Specialist  | 2021-06-10 |
|  7 | Grace  |   27 | 52000.00 | Female | IT         | Analyst     | 2020-09-23 |
|  8 | Hank   |   33 | 75000.00 | Male   | IT         | Developer   | 2018-04-11 |
| 11 | Kate   |   28 | 68000.00 | Female | HR         | Specialist  | 2021-11-05 |
| 13 | Mona   |   31 | 72000.00 | Female | IT         | Developer   | 2018-08-02 |
| 15 | Olivia |   26 | 55000.00 | Female | Marketing  | Coordinator | 2020-12-04 |
| 17 | Quincy |   29 | 66000.00 | Male   | HR         | Recruiter   | 2019-09-18 |
| 20 | Tina   |   32 | 74000.00 | Female | IT         | Developer   | 2019-07-28 |
+----+--------+------+----------+--------+------------+-------------+------------+
10 rows in set (0,00 sec)

mysql> UPDATE employee SET salary = 75000 WHERE name = 'Bob';
Query OK, 1 row affected (0,03 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM employee WHERE name = 'Tina';
Query OK, 1 row affected (0,03 sec)

mysql> INSERT INTO employee (name, age, salary, gender, department, position, hire_date) VALUES
    -> ('Uma', 34, 85000, 'Female', 'IT', 'Developer', '2022-03-15');
Query OK, 1 row affected (0,01 sec)

mysql> SELECT * FROM employee WHERE gender = 'Female';
+----+--------+------+-----------+--------+------------+-------------+------------+
| id | name   | age  | salary    | gender | department | position    | hire_date  |
+----+--------+------+-----------+--------+------------+-------------+------------+
|  1 | Alice  |   30 |  70000.00 | Female | IT         | Developer   | 2020-01-15 |
|  3 | Carol  |   45 | 110000.00 | Female | Finance    | Manager     | 2015-03-30 |
|  5 | Eve    |   29 |  65000.00 | Female | Marketing  | Specialist  | 2021-06-10 |
|  7 | Grace  |   27 |  52000.00 | Female | IT         | Analyst     | 2020-09-23 |
|  9 | Ivy    |   42 | 105000.00 | Female | Finance    | Analyst     | 2016-05-16 |
| 11 | Kate   |   28 |  68000.00 | Female | HR         | Specialist  | 2021-11-05 |
| 13 | Mona   |   31 |  72000.00 | Female | IT         | Developer   | 2018-08-02 |
| 15 | Olivia |   26 |  55000.00 | Female | Marketing  | Coordinator | 2020-12-04 |
| 18 | Rachel |   37 |  92000.00 | Female | Finance    | Analyst     | 2015-11-22 |
| 21 | Uma    |   34 |  85000.00 | Female | IT         | Developer   | 2022-03-15 |
+----+--------+------+-----------+--------+------------+-------------+------------+
10 rows in set (0,00 sec)

mysql> SELECT * FROM employee ORDER BY age ASC LIMIT 1;
+----+------+------+----------+--------+------------+-----------+------------+
| id | name | age  | salary   | gender | department | position  | hire_date  |
+----+------+------+----------+--------+------------+-----------+------------+
|  2 | Bob  |   24 | 75000.00 | Male   | HR         | Recruiter | 2019-11-01 |
+----+------+------+----------+--------+------------+-----------+------------+
1 row in set (0,00 sec)

mysql> SELECT department, SUM(salary) AS total_salary FROM employee GROUP BY department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| IT         |    546000.00 |
| HR         |    209000.00 |
| Finance    |    422000.00 |
| Marketing  |    215000.00 |
| Operations |    305000.00 |
+------------+--------------+
5 rows in set (0,00 sec)

mysql> SELECT AVG(age) AS average_age FROM employee;
+-------------+
| average_age |
+-------------+
|     35.2500 |
+-------------+
1 row in set (0,01 sec)

mysql> SELECT * FROM employee ORDER BY salary DESC LIMIT 1;
+----+-------+------+-----------+--------+------------+----------+------------+
| id | name  | age  | salary    | gender | department | position | hire_date  |
+----+-------+------+-----------+--------+------------+----------+------------+
|  6 | Frank |   50 | 120000.00 | Male   | Operations | Manager  | 2010-07-19 |
+----+-------+------+-----------+--------+------------+----------+------------+
1 row in set (0,01 sec)

mysql> SELECT * FROM employee WHERE department = 'Finance';
+----+--------+------+-----------+--------+------------+----------+------------+
| id | name   | age  | salary    | gender | department | position | hire_date  |
+----+--------+------+-----------+--------+------------+----------+------------+
|  3 | Carol  |   45 | 110000.00 | Female | Finance    | Manager  | 2015-03-30 |
|  9 | Ivy    |   42 | 105000.00 | Female | Finance    | Analyst  | 2016-05-16 |
| 14 | Nate   |   47 | 115000.00 | Male   | Finance    | Manager  | 2009-06-12 |
| 18 | Rachel |   37 |  92000.00 | Female | Finance    | Analyst  | 2015-11-22 |
+----+--------+------+-----------+--------+------------+----------+------------+
4 rows in set (0,00 sec)

mysql> SELECT gender, COUNT(*) AS count FROM employee GROUP BY gender;
+--------+-------+
| gender | count |
+--------+-------+
| Female |    10 |
| Male   |    10 |
+--------+-------+
2 rows in set (0,00 sec)

mysql> SELECT * FROM employee WHERE position = 'Developer';
+----+-------+------+----------+--------+------------+-----------+------------+
| id | name  | age  | salary   | gender | department | position  | hire_date  |
+----+-------+------+----------+--------+------------+-----------+------------+
|  1 | Alice |   30 | 70000.00 | Female | IT         | Developer | 2020-01-15 |
|  4 | David |   35 | 90000.00 | Male   | IT         | Developer | 2017-08-21 |
|  8 | Hank  |   33 | 75000.00 | Male   | IT         | Developer | 2018-04-11 |
| 13 | Mona  |   31 | 72000.00 | Female | IT         | Developer | 2018-08-02 |
| 21 | Uma   |   34 | 85000.00 | Female | IT         | Developer | 2022-03-15 |
+----+-------+------+----------+--------+------------+-----------+------------+
5 rows in set (0,00 sec)

mysql> 

