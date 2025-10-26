CREATE DATABASE college6;
USE college6;
CREATE TABLE Students (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Email VARCHAR(50)
);

DELETE FROM Students
WHERE RollNo = 3;


SELECT * FROM Students;