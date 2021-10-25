CREATE TABLE IF NOT EXISTS posts (

    id serial PRIMARY KEY, 
    image VARCHAR(255),
    title VARCHAR(255),
    summary TEXT,
    body TEXT,
    created_at TIMESTAMP
)
