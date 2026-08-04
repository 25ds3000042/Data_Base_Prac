===========================================
Employee Management Database
===========================================

CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO Employees (first_name, last_name, department, salary, hire_date)
VALUES
('John','Doe','IT',65000,'2023-01-15'),
('Jane','Smith','HR',52000,'2022-06-10'),
('Michael','Brown','Finance',71000,'2021-09-20'),
('Emily','Davis','IT',68000,'2024-02-05'),
('David','Wilson','Sales',59000,'2023-11-11');

SELECT * FROM Employees;
SELECT * FROM Employees WHERE department='IT';
SELECT * FROM Employees WHERE salary > 60000;
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;

UPDATE Employees
SET salary = salary + 5000
WHERE department='IT';

DELETE FROM Employees
WHERE employee_id = 5;

ALTER TABLE Employees
ADD email VARCHAR(100);

-- DROP TABLE Employees;
