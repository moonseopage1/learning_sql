CREATE TABLE employees(
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES (1, 'John Doe', 101);
INSERT INTO employees VALUES (2, 'Jane smith', 102);

INSERT INTO departments VALUES (101, 'Human Resource');
INSERT INTO departments VALUES (102, 'Marketing');

SELECT * FROM employees;
SELECT * FROM departments;

-- CROSS JOIN
SELECT * FROM employees
    CROSS JOIN departments;

SELECT * FROM employees
    NATURAL JOIN departments;


DROP TABLE employees;
DROP TABLE departments;