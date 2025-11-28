-- EMPLOYEE MANAGEMENT DATABASE PROJECT
CREATE DATABASE employee_db;
USE employee_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);
INSERT INTO employees (first_name, last_name, gender, department, salary, hire_date)
VALUES
('Arun', 'Kumar', 'Male', 'IT', 45000, '2022-01-10'),
('Priya', 'Suresh', 'Female', 'HR', 40000, '2021-03-18'),
('Rahul', 'Sharma', 'Male', 'Finance', 55000, '2020-07-21'),
('Sneha', 'Reddy', 'Female', 'IT', 60000, '2023-05-15'),
('Vishal', 'Patil', 'Male', 'Marketing', 35000, '2022-11-01');
SELECT * FROM employees;
UPDATE employees 
SET salary = salary + 5000
WHERE department = 'IT';
DELETE FROM employees
WHERE emp_id = 5;
SELECT * FROM employees
WHERE salary > 45000;
SELECT department, AVG(salary) AS average_salary
FROM employees
GROUP BY department;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
CREATE VIEW it_employees AS
SELECT first_name, last_name, salary
FROM employees
WHERE department = 'IT';
SELECT * FROM it_employees;
