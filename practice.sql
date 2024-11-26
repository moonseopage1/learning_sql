-- creating the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);


--creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
);

DROP TABLE employees;
DROP TABLE departments;

INSERT INTO departments(department_name)
VALUES
    ('HR'),
    ('Marketing'),
    ('Finance'),
    ('IT'),
    ('Sales'),
    ('Engineering'),
    ('Customer Support'),
    ('Administration'),
    ('Research'),
    ('Quality Assurance');

INSERT INTO employees(employee_name, department_id, salary, hire_date)
VALUES
    ('John Doe', 1, 50000.00, '2022-01-01'),
    ('Jane Doe', 2, 60000.00, '2022-02-01'),
    ('Bob Smith', 3, 70000.00, '2022-03-01'),
    ('Alice Johnson', 4, 80000.00, '2022-04-01'),
    ('Tom Brown', 5, 90000.00, '2022-05-01'),
    ('Sara Davis', 6, 100000.00, '2022-06-01'),
    ('Mark Wilson', 7, 110000.00, '2022-07-01'),
    ('Emily Anderson', 8, 120000.00, '2022-08-01'),
    ('David Martinez', 9, 130000.00, '2022-09-01'),
    ('Olivia Taylor', 10, 140000.00, '2022-10-01'),
    ('James Anderson', 1, 150000.00, '2022-11-01'),
    ('Ava Thompson', 2, 160000.00, '2022-12-01'),
    ('Ethan Martinez', 3, 170000.00, '2023-01-01'),
    ('Mia Johnson', 4, 180000.00, '2023-02-01'),
    ('Noah Davis', 5, 190000.00, '2023-03-01'),
    ('Sophia Wilson', 6, 200000.00, '2023-04-01'),
    ('Liam Anderson', 7, 210000.00, '2023-05-01'),
    ('Emma Martinez', 8, 220000.00, '2023-06-01'),
    ('Oliver Thompson', 9, 230000.00, '2023-07-01'),
    ('Charlotte Davis', 10, 240000.00, '2023-08-01'),
    ('Elijah Wilson', 1, 250000.00, '2023-09-01'),
    ('Abigail Anderson', 2, 260000.00, '2023-10-01'),
    ('Oliver Thompson', 9, 230000.00, '2023-07-01'),
    ('Charlotte Davis', 10, 240000.00, '2023-08-01'),
    ('Elijah Wilson', 1, 250000.00, '2023-09-01'),
    ('Abigail Anderson', 2, 260000.00, '2023-10-01'),
    ('Oliver Thompson', 9, 230000.00, '2023-07-01'),
    ('Charlotte Davis', 10, 240000.00, '2023-08-01'),
    ('Elijah Wilson', 1, 250000.00, '2023-09-01'),
    ('Abigail Anderson', 2, 260000.00, '2023-10-01');

-- 1. Inner join to Retrieve Employee and Department Information(method 1)
SELECT * FROM employees
    JOIN departments ON employees.department_id = departments.department_id;
-- 1. Inner join to Retrieve Employee and Department Information(method 2)
SELECT * FROM employees
    JOIN departments USING(department_id);

-- 2. Show Department Name with Average Salary
SELECT department_name, round(avg(salary),2) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary DESC;


-- 3. Count Employees in Each Department
SELECT department_name, count(employee_id)  FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name;


-- 4. Find the Department name with the Highest Average Salary
SELECT department_name, round(avg(salary),2) as avg_salary FROM employees
    JOIN departments USING(department_id)
    GROUP BY department_name
    ORDER BY avg_salary DESC 
    LIMIT 1;

-- 5. Count Employees Hired Each Year
SELECT extract(year from hire_date) as hire_year, count(employee_id) FROM employees
    GROUP BY extract(year from hire_date);