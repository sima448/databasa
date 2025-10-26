CREATE DATABASE college2;
USE college2;
CREATE TABLE student2(
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);
INSERT INTO student2
(rollno, name, marks, grade, city)
VALUES
(101, "salni", 77, "C", "Gujrat"),
(102, "shahi", 87, "B" ,"Mumbai"), 
(103, "rohan", 78, "C", "Pune"),
(104, "saloni", 50, "D", "Lakhnau"), 
(105, "rinki", 89, "B", "Delhi"), 
(106, "sohan", 95, "A", "Mumbai"),
(107, "monika", 85, "B", "Delhi");
SELECT * FROM student2; 
ALTER TABLE student2 ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE student2 MODIFY COLUMN age VARCHAR(2);
ALTER TABLE student2 CHANGE age stu_age INT;
ALTER TABLE student2 DROP COLUMN grade;
ALTER TABLE student2 RENAME TO stu;
ALTER TABLE stu RENAME TO student2;
TRUNCATE TABLE student2;
ALTER TABLE student2 ADD COLUMN grade VARCHAR(1);

INSERT INTO student2
(rollno,name,marks, grade, city, stu_age)
VALUES
(109, "salni", 77, "C", "Gujrat", 100); -- age difine varchare(2) so that through error becouse give age 100,--

-- Q1.change the name of column "name" to "full_name" --
ALTER TABLE student2 CHANGE name full_name VARCHAR(30);
-- Q2.Delete all the students who scored marks less than 80. --
DELETE FROM student2 WHERE marks < 80;
SET SQL_SAFE_UPDATES = 0;
-- Delete the column for grades--
ALTER TABLE student2 DROP COLUMN grade;






