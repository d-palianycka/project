DROP TABLE IF EXISTS Application;
DROP TABLE IF EXISTS Animals;
DROP TABLE IF EXISTS Type;
DROP TABLE IF EXISTS Volunteer;

CREATE TABLE Type (
    id SERIAL PRIMARY KEY,
    breed VARCHAR(100) NOT NULL
);

CREATE TABLE Volunteer (
    id SERIAL PRIMARY KEY,
    fullname VARCHAR(200) NOT NULL,
    phone VARCHAR(20) NOT NULL UNIQUE,
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255) NOT NULL, -- Пам'ятаємо про хеш!
    photo TEXT
);

CREATE TABLE Animals (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    id_type INT REFERENCES Type(id),
    description TEXT,
    status VARCHAR(50),
    sex VARCHAR(10),
    photo TEXT
);

CREATE TABLE Application (
    id SERIAL PRIMARY KEY,
    id_vol INT REFERENCES Volunteer(id) ON DELETE CASCADE,
    id_ani INT REFERENCES Animals(id) ON DELETE CASCADE
);