-- init.sql
CREATE TABLE IF NOT EXISTS users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    age INTEGER
);

INSERT INTO users (name, age) VALUES ('Alice', 30);
INSERT INTO users (name, age) VALUES ('Bob', 25);
