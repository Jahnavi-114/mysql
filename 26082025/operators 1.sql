show databases;
create database sathyabama;
use sathyabama;
create table company(
c_id INT primary key,
c_name VARCHAR(20),
c_department VARCHAR(20),
c_salary long not null,
c_pn long not null
);
INSERT INTO company (c_id, c_name, c_department, c_salary, c_pn)
VALUES 
    (101, 'Alice', 'Technical', 50000, 9837373728),
    (102, 'Bob', 'Non Technical', 40000, 8888999989),
    (103, 'Charlie', 'Sales', 60000, 8758792878);

show tables from sathyabama;
select * from company;
#Find employees with salary greater than ₹50,000
SELECT * FROM company WHERE c_salary > 50000;
#Retrieve employees with salary between ₹40,000 and ₹60,000
SELECT * FROM company WHERE c_salary BETWEEN 40000 AND 60000;
#Get employees from either 'Technical' or 'Sales' departments
SELECT * FROM company WHERE c_department IN ('Technical', 'Sales');

