-- Active: 1731041832306@@127.0.0.1@5432@ph
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
)

ALTER TABLE post
    ALTER COLUMN user_id SET NOT NULL;


INSERT INTO "user"(username) VALUES
    ('akash'),
    ('batash'),
    ('sagor'),
    ('nodi');


INSERT INTO "post"(title,user_id) VALUES
    ('post1',2),
    ('post2',1),
    ('post3',4),
    ('post4',4);

DROP Table "post";
DROP Table "user";

SELECT * FROM "user";

SELECT * FROM "post";


-- INSERT INTO "post"(title,user_id) VALUES('new post',NULL);

INSERT INTO post(title,user_id) VALUES
    ('null post',NULL);

DELETE FROM "user" WHERE id = 4;
-- DELETE FROM "post" WHERE id = 22;