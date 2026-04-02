DROP TABLE IF EXISTS Animals;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    surname VARCHAR(100),
    phone VARCHAR(20) NOT NULL,
    email VARCHAR(100)
);

CREATE TABLE Animals (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES Users(id),
    type VARCHAR(50),
    breed VARCHAR(100),
    description TEXT,
    status VARCHAR(50)
);