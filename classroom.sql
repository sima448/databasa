CREATE DATABASE college;
USE college;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT NOT NULL
);
INSERT INTO student VALUES(1, "sima",19);
INSERT INTO student VALUES(2, "suman",20);
INSERT INTO student VALUES(3, "sima1",24);
INSERT INTO student VALUES(4, "suman2",25);

SELECT * FROM student;
CREATE DATABASE IF NOT EXISTS college;
DROP DATABASE IF EXISTS company;
SHOW DATABASES;
SHOW TABLES;
CREATE DATABASE college1;
USE college1;
CREATE TABLE student1(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student1
(rollno,name,marks, grade, city)
VALUES
(108, "salni", 77, "C", "Gujrat"),
(102, "shahi", 87, "B" ,"Mumbai"), 
(103, "rohan", 78, "C", "Pune"),
(104, "saloni", 50, "D", "Lakhnau"), 
(105, "rinki", 89, "B", "Delhi"), 
(106, "sohan", 95, "A", "Mumbai"),
(107, "monika", 85, "B", "Delhi"); 

SELECT rollno ,name FROM student1;
SELECT * FROM student1; 
SELECT city FROM student1;
SELECT DISTINCT city FROM student1;

CREATE TABLE student2(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO student2
(rollno,name,marks, grade, city)
VALUES
(108, "salni", 77, "C", "Gujrat"),
(102, "shahi", 87, "B" ,"Mumbai"), 
(103, "rohan", 78, "C", "Pune"),
(104, "saloni", 50, "D", "Lakhnau"), 
(105, "rinki", 89, "B", "Delhi"), 
(106, "sohan", 95, "A", "Mumbai"),
(107, "monika", 85, "B", "Delhi"); 

SELECT rollno ,name FROM student2;-- rollno & name column print--
SELECT * FROM student2; -- all column are print --
SELECT city FROM student2;-- only city column print--
SELECT DISTINCT city FROM student2;-- repeated value is avoid--
SELECT * FROM student2 WHERE marks > 80; 
SELECT * FROM student2 WHERE city= "mumbai" AND marks > 80;
SELECT * FROM student2 WHERE  marks+10 > 100;
SELECT * FROM student2 WHERE  marks = 80;
SELECT * FROM student2 WHERE city= "mumbai" AND marks > 70;
SELECT * FROM student2 WHERE city= "mumbai" OR marks > 90;
SELECT * FROM student2 WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student2 WHERE  city IN ("Delhi", "Mumbai");
SELECT * FROM student2 WHERE  city NOT IN ("Delhi", "Mumbai");
SELECT * FROM student2 LIMIT 3;
SELECT * FROM student2 ORDER BY rollno ASC;
SELECT * FROM student2 ORDER BY rollno DESC LIMIT 4;
SELECT MAX(marks) FROM student2;
SELECT MIN(marks) FROM student2;
SELECT AVG(marks) FROM student2;
SELECT COUNT(name) FROM student2;
SELECT city FROM student2 GROUP BY city;
SELECT city, count(name) FROM student2 GROUP BY city;
SELECT city FROM student2 WHERE grade = "A" GROUP BY city HAVING MAX(marks) >= 93 ORDER BY city DESC;

CREATE TABLE payment(
customer_id INT PRIMARY KEY,
customer VARCHAR(40),
mode VARCHAR(20),
city VARCHAR(50)
);
INSERT INTO payment
(customer_id, customer, mode, city)
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Seattle"),
(104, "Liam Donvan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashvile"),
(110, "Jackson Brooks", "Credit Card", "Boston");
SELECT mode FROM payment GROUP BY mode;
SELECT mode,count(customer) FROM payment GROUP BY mode;
SELECT city FROM student2 GROUP BY city;

SET SQL_SAFE_UPDATES = 0;-- SAFE MODE OFF--
UPDATE payment SET mode = "Debit Card" WHERE mode = "Credit Card";
SELECT * FROM payment;
