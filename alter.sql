-- Active: 1731041832306@@127.0.0.1@5432@ph
SELECT * from person2;

ALTER TABLE person2
 ADD COLUMN email VARCHAR(25) DEFAULT 'deafult@email.com' NOT NULL;


ALTER TABLE person2
 DROP COLUMN email;

ALTER TABLE person2
    RENAME COLUMN age to user_age;

ALTER TABLE person2
    ALTER user_name TYPE VARCHAR(50);


ALTER TABLE person2
    AlTER COLUMN user_age set NOT NULL;

ALTER TABLE person2
    AlTER COLUMN user_age DROP NOT NULL;


ALTER TABLE person2
    ADD CONSTRAINT unique_person2_use_age UNIQUE(user_age);

    
ALTER TABLE person2
    DROP CONSTRAINT unique_person2_use_age;


TRUNCATE TABLE person2;


INSERT INTO person2 values(9,'test3',30,'test@email.com');