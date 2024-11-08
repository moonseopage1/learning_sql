SHOW timezone;

SELECT now();

CREATE TABLE timeZ(ts TIMESTAMP without time zone,tsz TIMESTAMP with time zone);

SELECT * FROM timeZ;

INSERT INTO timeZ 
    VALUES('2022-01-01 00:00:00', '2022-01-01 00:00:00+02:00');

SELECT CURRENT_DATE;

SELECT now()::date;
SELECT now()::time;


SELECT to_char(now(),'MONTH');

SELECT CURRENT_DATE - INTERVAL '1 month';

SELECT age(CURRENT_DATE,'2002-01-15');

SELECT *,age(CURRENT_DATE,dob) from students;