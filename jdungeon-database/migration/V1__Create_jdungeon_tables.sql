CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE levels (
    id SERIAL PRIMARY KEY,
    level VARCHAR(255) NOT NULL UNIQUE,
    key VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    port INTEGER NOT NULL
);

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    player VARCHAR(255) NOT NULL,
    level VARCHAR(255) NOT NULL,
    pos_x REAL,
    pos_y REAL,
    stats json DEFAULT '{"hp":10, "level":1, "exp":0}',
    inventory json DEFAULT '{"gold":0, "items": []}',
    equipment json DEFAULT '{"equipment":{}}'
);