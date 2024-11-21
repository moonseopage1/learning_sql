-- Active: 1731041832306@@127.0.0.1@5432@ph
SELECT * FROM students;

SELECT country,count(*),avg(age) from students GROUP BY country;
SELECT country,avg(age) from students
    GROUP BY country 
        HAVING avg(age)>25;



-- filter groups using HAVING to show only countries with Average Age above 25
SELECT country,avg(age) from students
    GROUP BY country 
        HAVING avg(age)>25;
-- count students Born in Each Year 
SELECT extract(year from dob) as birth_year, count(*)
    FROM students
    GROUP BY birth_year;