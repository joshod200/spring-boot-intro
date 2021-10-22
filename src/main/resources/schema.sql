DROP TABLE IF EXISTS posts;
CREATE TABLE posts(id serial PRIMARY KEY, image VARCHAR(255), title VARCHAR(255), body TEXT, created_at TIMESTAMP);