CREATE DATABASE  college4;
USE college4;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    age INT
);
INSERT INTO students VALUES
(1, 'Alice', 85, 20),
(2, 'Bob', 90, 21),
(3, 'Charlie', 72, 22),
(4, 'Diana', 88, 20),
(5, 'Evan', 95, 23);
INSERT INTO students VALUES (6,'Neha', 95, 20);
SELECT marks, COUNT(*) AS total_students FROM students GROUP BY marks HAVING COUNT(*) > 2;
