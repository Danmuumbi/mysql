CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    second_name VARCHAR(255) NOT NULL,
    student_address VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    marks INT,
    student_status VARCHAR(20) NOT NULL
);
--to execute run the command below
--mysql -u root -p practice < create_tables.sql
--Then navigate to mysql sudo mysql -u root -p
--SHOW DATABASES;
--USE practice
--SHOW TABLES;
--DESCRIBE students;/SHOW COLUMNS FROM students;
--the result will be as below confirming database has beem created
/*
mysql> USE practice;
Database changed

mysql> SHOW TABLES;
+--------------------+
| Tables_in_practice |
+--------------------+
| students           |
+--------------------+
1 row in set (0.01 sec)

mysql> DESCRIBE students;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int          | NO   | PRI | NULL    | auto_increment |
| first_name    | varchar(255) | NO   |     | NULL    |                |
| second_name   | varchar(255) | NO   |     | NULL    |                |
| address       | varchar(200) | NO   |     | NULL    |                |
| email         | varchar(100) | NO   | UNI | NULL    |                |
| marks         | int          | YES  |     | NULL    |                |
| student_status| varchar(20)  | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+

mysql> SHOW COLUMNS FROM students;
+---------------+--------------+------+-----+---------+----------------+
| Field         | Type         | Null | Key | Default | Extra          |
+---------------+--------------+------+-----+---------+----------------+
| id            | int          | NO   | PRI | NULL    | auto_increment |
| first_name    | varchar(255) | NO   |     | NULL    |                |
| second_name   | varchar(255) | NO   |     | NULL    |                |
| address       | varchar(200) | NO   |     | NULL    |                |
| email         | varchar(100) | NO   | UNI | NULL    |                |
| marks         | int          | YES  |     | NULL    |                |
| student_status| varchar(20)  | NO   |     | NULL    |                |
+---------------+--------------+------+-----+---------+----------------+

*/
