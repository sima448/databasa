CREATE DATABASE xyz_company;
USE xyz_company;
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(40),
salary FLOAT
);

INSERT INTO employee VALUES(1, "alam", 25000);
INSERT INTO employee VALUES(2, "aman", 35000);
INSERT INTO employee VALUES(3, "alakh", 15000);
INSERT INTO employee VALUES(4, "aryan", 30000);
SELECT * FROM employee;

CREATE TABLE temp4(
id INT,
name VARCHAR(20),
age INT,
city VARCHAR(30),
PRIMARY KEY(id, name)-- id columan is dublicate value exist and name column is work same id columan but both column are combined to the given primary key value.--
);
INSERT INTO temp4 VALUES(1, "alam", 25, "up");
INSERT INTO temp4 VALUES(2, "aman", 35, "patna");
INSERT INTO temp4 VALUES(3, "alakh", 15, "ghaziabad");
INSERT INTO temp4 VALUES(3, "aman", 15, "ghaziabad");
INSERT INTO temp4 VALUES(4, "alakh", 15, "ghaziabad");
SELECT * FROM temp4;

CREATE TABLE emp(
id INT,
salary INT DEFAULT 25000
);
INSERT INTO emp (id) VALUES(101);
SELECT * FROM emp;

CREATE TABLE dept(
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO dept
VALUES
(101, "english"),
(102, "IT");
 SELECT * FROM dept;
 UPDATE dept SET id = 103 WHERE id = 102;
 
CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES dept(id)
-- Both table dept & teacher used in foreign key and i want to change dept table with change the teacher table for used --
ON UPDATE CASCADE
ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, "Adam", 101),
(102, "Eve", 102);
 SELECT * FROM teacher;