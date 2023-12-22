--1) В результате выполнения запроса будет получен игрок 
-- с максимальным рейтингом в каждом клубе
SELECT club_id,
       full_name,
       rating_elo
FROM Players
WHERE (club_id, rating_elo) IN
(SELECT club_id, MAX(rating_elo) AS max_rating
FROM Players
GROUP BY club_id) AND  valid_to_dttm = '2023-12-31';

-- 2) В результате выполнения запроса будет получено количество игр, 
-- в которых победили белые, для каждого турнира
SELECT tournament_id, count(1) as number_of_games_white_won
FROM Games
WHERE result = '1:0'
GROUP BY tournament_id;

-- 3) В результате выполнения запроса будет получен список турниров с их локациями, 
-- отсортированные  по важности в порядке убывания
SELECT t.tournament_name as name,
       l.location_name,
       t.start_date,
       t.end_date,
       t.importance
FROM Tournaments t
         INNER JOIN
     Location l
     ON
         l.location_id = t.location_id
ORDER BY importance DESC;


-- 4) В результате выполнения запроса будет получен список клубов
-- и средний рейтинг игрока по клубу
SELECT c.club_name, AVG(p.rating_elo) AS average_rating
FROM Clubs c
JOIN Players p ON c.club_id = p.club_id
WHERE p.valid_to_dttm = '2023-12-31' -- Последняя версия игрока
GROUP BY c.club_name;



-- 5) В результате выполнения запроса будет получен список типов инвентаря с общим количеством 
-- для каждого типа, отсортированных по убыванию общего количества
SELECT type, SUM(quantity) AS total_quantity
FROM Inventory
GROUP BY type
ORDER BY total_quantity DESC;

-- 6) В результате выполнения запроса будет получен список топ-3 игроков с самым высоким рейтингом в каждом клубе, 
-- отсортированных по клубу и рейтингу игрока
-- (если несколько  игроков с маскимальным, 2 по максимальности или 3 по максимальности рейтингом, то список всех их)
-- сначала данные, чтоб в этом можно было убедиться
INSERT INTO Players(club_id,  valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-12-31', '2Дудкина Ульяна Дмитриевна', 1988, '2006-03-18', 'RUS');

INSERT INTO Players(club_id,  valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-12-31', '3Дудкина Ульяна Дмитриевна', 1988, '2006-03-18', 'RUS');

INSERT INTO Players(club_id,  valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-12-31', '4Дудкина Ульяна Дмитриевна', 1988, '2006-03-18', 'RUS');

INSERT INTO Players(club_id,  valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-01-01', '2023-12-31', '2Воробьёва Варвара Алексеевна', 1713, '2006-03-18', 'RUS');
-- запрос
SELECT club_id, full_name, rating_elo, player_rank
FROM (
    SELECT club_id, full_name, rating_elo,
           DENSE_RANK() OVER (PARTITION BY club_id ORDER BY rating_elo DESC) AS player_rank
    FROM Players
    WHERE valid_to_dttm = '2023-12-31'
)RankedPlayers
WHERE player_rank <= 3 OR (rating_elo = (SELECT MAX(rating_elo) FROM Players p2 WHERE p2.club_id = RankedPlayers.club_id))
ORDER BY club_id, rating_elo DESC;
