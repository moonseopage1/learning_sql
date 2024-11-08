CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(50),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students(first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 25, 'A', 'Computer Science', 'jdoe@cs.com', '1990-01-01', 'O+', 'USA'),
    ('Jane', 'Smith', 22, 'B', 'Mathematics', 'jsmith@math.com', '1992-05-15', 'A+', 'Canada'),
    ('Bob', 'Johnson', 30, 'C', 'Physics', 'bjohnson@physics.com', '1988-12-31', 'B-', 'Mexico'),
    ('Alice', 'Brown', 28, 'D', 'Chemistry', 'abrown@chem.com', '1995-08-20', 'AB+', 'Bangladesh'),
    ('Mike', 'Lee', 27, 'E', 'Biology', 'mlee@bio.com', '1993-03-10', 'O-', 'China'),
    ('Emily', 'Davis', 23, 'F', 'Geography', 'edavis@geo.com', '1994-11-27', 'AB-', 'India'),
    ('David', 'Garcia', 26, 'A', 'Physics', 'dgarcia@physics.com', '1992-07-30', 'A-', 'Brazil'),
    ('Sarah', 'Miller', 29, 'B', 'Biology', 'smiller@bio.com', '1991-04-05', 'B+', 'Australia'),
    ('Tom', 'Wilson', 24, 'C', 'Chemistry', 'twilson@chem.com', '1993-09-18', 'O+', 'USA'),
    ('Olivia', 'Taylor', 21, 'D', 'Mathematics', 'otaylor@math.com', '1996-02-02', 'AB-', 'USA'),
    ('James', 'Anderson', 25, 'E', 'Computer Science', 'janderson@cs.com', '1990-06-10', 'A+', 'Germany'),
    ('Ava', 'Jackson', 22, 'B', 'Physics', null, '1992-10-05', 'B-', 'France'),
    ('Daniel', 'White', 28, 'F', 'Chemistry', 'dwhite@chem.com', '1988-03-20', 'AB+', 'USA'),
    ('Sophia', 'Harris', 23, 'C', 'Biology', 'sharris@bio.com', '1994-07-15', 'O-', 'Italy'),
    ('Ethan', 'Thompson', 30, 'D', 'Geography', 'ethompson@geo.com', '1987-12-31', 'AB-', 'Spain'),
    ('Mia', 'Clark', 27, 'P', 'Computer Science', 'mclark@cs.com', '1993-09-10', 'A+', 'Portugal'),
    ('Alexander', 'Lewis', 29, 'A', 'Mathematics', 'alewis@math.com', '1991-05-27', 'B-', 'Netherlands'),
    ('Isabella', 'Robinson', 24, 'A', 'Physics', 'irobinson@physics.com', '1993-11-18', 'AB+', 'Poland'),
    ('Matthew', 'Walker', 26, 'C', 'Chemistry', null, '1992-08-30', 'O-', 'Denmark'),
    ('Emily', 'Turner', 21, 'D', 'Biology', 'eturner@bio.com', '1996-01-02', 'AB-', 'Finland');


TRUNCATE TABLE students;


SELECT * FROM students;
SELECT * FROM students ORDER BY dob DESC;

SELECT DISTINCT blood_group FROM students;


-- data filtering

-- select student from USA
-- select students with 'A' grade in Computer Science
-- select students with a specific blood group ('A+')
-- select students from USA or from Australia
-- select students from USA or from Australia and age is 25
-- select students with a grade 'A' or 'B' in Computer Science or Physics:

SELECT * from students
    WHERE country = 'USA';

SELECT * from students
    WHERE grade = 'A' AND course = 'Computer Science';

SELECT * from students
    WHERE blood_group = 'A+';

SELECT * from students
    WHERE country = 'USA' OR country = 'Australia';

SELECT * from students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 25;


/*

@Scaler functions
UPPER() converts a string to uppercase
LOWER() converts a string to lowercase
CONCAT() concatenates two or more strings
LENGTH() returns the length of a string

@Aggregate functions
AVG() Calculates the average value of a set of values
MAX() Returns the maximum value in a set of values
MIN() Returns the minimum value in a set of values
SUM() Returns the sum of all values in a set of values
COUNT() Returns the number of values in a set of values 

*/

SELECT concat(first_name,' ', last_name) FROM students;
SELECT length(first_name) FROM students;

SELECT avg(age) FROM students;
SELECT max(age) FROM students;
SELECT min(age) FROM students;
SELECT sum(age) FROM students;
SELECT count(*) FROM students;
SELECT max(length(first_name)) FROM students;

--  Logical Negation NOT, understanding NULL and the Null-Coalescing
SELECT * FROM students
    WHERE NOT country = 'USA';

SELECT * FROM students
    WHERE email IS NOT NULL;


SELECT COALESCE(email, 'N/A') as email, blood_group, first_name FROM students;

SELECT * FROM students
    WHERE country IN('USA', 'Australia','Bangladesh');
SELECT * FROM students
    WHERE country NOT IN('USA', 'Australia','Bangladesh');
SELECT * FROM students
    WHERE dob BETWEEN '1995-01-01' AND '1999-01-01' ORDER BY dob;

SELECT * FROM students
WHERE first_name LIKE '%a';

SELECT * FROM students
WHERE first_name ILIKE 'a%';


SELECT * FROM students LIMIT 5  OFFSET 5 * 0;
SELECT * FROM students LIMIT 5  OFFSET 5 * 1;
SELECT * FROM students LIMIT 5  OFFSET 5 * 2;
SELECT * FROM students LIMIT 5  OFFSET 5 * 3;

DELETE FROM students
    WHERE grade = 'C' AND country = 'USA';