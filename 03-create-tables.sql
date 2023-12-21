CREATE SCHEMA IF NOT EXISTS chess_project;
set search_path = chess_project, public;


CREATE TABLE IF NOT EXISTS Clubs
(
    club_id             SERIAL PRIMARY KEY,
    club_name           VARCHAR(50) NOT NULL UNIQUE,
    club_location       TEXT,
    contact_information TEXT,
    students_number     INT CHECK (students_number > 0)
);


CREATE TABLE IF NOT EXISTS Location
(
    location_id         SERIAL PRIMARY KEY,
    location_name       TEXT NOT NULL,
    address             TEXT NOT NULL,
    contact_information TEXT
);


CREATE TABLE IF NOT EXISTS Players
(
    player_id       SERIAL PRIMARY KEY,
    club_id         INT REFERENCES Clubs (club_id),
    valid_to_dttm   TIMESTAMP NOT NULL,
    valid_from_dttm TIMESTAMP NOT NULL,
    full_name       TEXT      NOT NULL,
    rating_elo      INT CHECK (rating_elo >= 1000 AND rating_elo <= 3000),
    date_of_birth   DATE,
    nationality     VARCHAR(50)
);


CREATE TABLE IF NOT EXISTS Inventory
(
    inventory_id   SERIAL PRIMARY KEY,
    club_id        INT                       NOT NULL REFERENCES Clubs (club_id),
    inventory_name VARCHAR(100)              NOT NULL,
    quantity       INT CHECK (quantity >= 0) NOT NULL,
    type           VARCHAR(100)              NOT NULL
);


CREATE TABLE IF NOT EXISTS Tournaments
(
    tournament_id   SERIAL PRIMARY KEY,
    location_id     INT  NOT NULL REFERENCES Location (location_id),
    tournament_name TEXT NOT NULL,
    start_date      DATE NOT NULL,
    end_date        DATE NOT NULL,
    importance      INT CHECK (importance >= 0 AND importance <= 4)
);


CREATE TABLE IF NOT EXISTS Inventory_X_Tournaments
(
    tournament_id int,
    inventory_id  int,
    PRIMARY KEY (tournament_id, inventory_id),
    FOREIGN KEY (tournament_id) REFERENCES Tournaments (tournament_id),
    FOREIGN KEY (inventory_id) REFERENCES Inventory (inventory_id)
);


CREATE TABLE IF NOT EXISTS Games
(
    game_id       SERIAL PRIMARY KEY,
    tournament_id INT         NOT NULL REFERENCES Tournaments (tournament_id),
    judge_id      INT         NOT NULL,
    player_w_id   INT         NOT NULL REFERENCES Players (player_id),
    player_b_id   INT         NOT NULL REFERENCES Players (player_id),
    result        VARCHAR(10) NOT NULL CHECK (result LIKE '_:_' OR result LIKE '0,5:0,5')
);

CREATE TABLE IF NOT EXISTS Judges
(
    judge_id      SERIAL PRIMARY KEY,
    full_name     TEXT NOT NULL,
    qualification TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    judge_rating  INT  NOT NULL
);
