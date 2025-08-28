show databases;
create database sathyabama;
use sathyabama;
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    email VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Vikram', 'Tech', 250000, 'vikram@company.com'),
(2, 'Anita', 'HR', 90000, 'anita@company.com'),
(3, 'Raj', 'Sales', 120000, 'raj@company.com'),
(4, 'Meena', 'Admin', 95000, 'meena@company.com'),
(5, 'Vishal', 'Finance', 200000, 'vishal@company.com'),
(6, 'Priya', 'Tech', 180000, 'priya@company.com'),
(7, 'Karan', 'HR', 85000, 'karan@company.com'),
(8, 'Divya', 'Marketing', 75000, 'divya@company.com'),
(9, 'Sneha', 'Admin', 65000, 'sneha@company.com'),
(10, 'Varun', 'Sales', 220000, 'varun@company.com');
show tables from sathyabama;
select * from employees;
#Query 1: Workers not in HR or Admin with salary between 70000 and 300000
SELECT * FROM employees
WHERE dept NOT IN ('HR', 'Admin') AND salary BETWEEN 70000 AND 300000;
#Query 2: Workers with first name starting with 'V' and salary ≥ 200000
SELECT * FROM employees
WHERE name LIKE 'V%' AND salary >= 200000;
#Query 3: Workers not in Admin with salary < 100000
SELECT * FROM employees 
WHERE dept <> 'Admin' AND salary < 100000;