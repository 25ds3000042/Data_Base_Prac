-- ===========================================
-- Student Management Database
-- ===========================================

CREATE DATABASE StudentDB;
USE StudentDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    department VARCHAR(50),
    marks DECIMAL(5,2)
);

INSERT INTO Students (first_name, last_name, age, gender, department, marks)
VALUES
('Alice', 'Johnson', 20, 'Female', 'Computer Science', 89.5),
('Bob', 'Smith', 22, 'Male', 'Mechanical', 76.0),
('Charlie', 'Brown', 21, 'Male', 'Electronics', 91.2),
('Diana', 'Wilson', 19, 'Female', 'Computer Science', 95.8),
('Eva', 'Thomas', 23, 'Female', 'Civil', 68.4);

SELECT * FROM Students;
SELECT * FROM Students WHERE marks > 80;
SELECT * FROM Students WHERE department = 'Computer Science';
SELECT * FROM Students ORDER BY marks DESC;
SELECT AVG(marks) AS Average_Marks FROM Students;
SELECT MAX(marks) AS Highest_Marks FROM Students;
SELECT COUNT(*) AS Total_Students FROM Students;
SELECT department, COUNT(*) AS Students_Count
FROM Students
GROUP BY department;

UPDATE Students
SET marks = 90
WHERE student_id = 2;

DELETE FROM Students
WHERE student_id = 5;

ALTER TABLE Students
ADD email VARCHAR(100);

SELECT *
FROM Students
WHERE age > 20
AND marks > 80;

-- DROP TABLE Students;
