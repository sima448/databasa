-- --
CREATE DATABASE college3;
USE college3;
CREATE TABLE student(
id INT PRIMARY KEY,
name VARCHAR(50)
);
INSERT INTO student(id, name)VALUES
(101, "SOHAN"),
(102, "GEETA"),
(103, "RAVI"),
(104, "RAHUL");

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50)
);
INSERT INTO course(id, course)VALUES
(102, "ENGLISH"),
(104, "HINDI"),
(103, "SCIENCE"),
(107, "MATHS"),
(105, "COMPUTER SCIENCE");
SELECT * FROM student;
SELECT * FROM course;






























