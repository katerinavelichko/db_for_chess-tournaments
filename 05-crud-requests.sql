--1
SELECT * FROM Clubs;

--2
SELECT full_name as name,
       rating_elo
FROM Players;

--3
UPDATE
    Players
SET rating_elo = 2500
WHERE full_name = 'Левин Евгений Алексеевич';

--4
UPDATE
    Clubs
SET contact_information = '+7(911)986-75-24',
    students_number     = 413
WHERE club_name = 'Аничков Дворец';

--5
DELETE
FROM Games
WHERE player_w_id = 1;

-- 6 для версионности
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-12-31', 'Пупкин Вася', 1000, '2000-01-01', 'RUS');

UPDATE Players
SET valid_to_dttm=CURRENT_DATE
WHERE full_name='Пупкин Вася';

INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, CURRENT_DATE, '2023-12-31', 'Пупкин Вася', 2000, '2000-01-01', 'RUS');
