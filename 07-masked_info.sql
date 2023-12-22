CREATE SCHEMA IF NOT EXISTS view_chess_project;
set search_path = view_chess_project, public;

-- 1 представление, полностью маскирующее valid_to_date и valid_from_date
CREATE or replace VIEW mask_valid_date AS
SELECT
    player_id,
    full_name,
    to_char(valid_to_dttm, '****-**-**') as formated_to_date,
    to_char(valid_from_dttm, '****-**-**') as formated_from_date
FROM
    chess_project.Players p;


-- 2 представление, маскирующее club_id в табличке Inventory
create or replace VIEW mask_club_id AS
SELECT
    inventory_id,
    repeat('*', length(to_char(club_id, '%'))) as club_id,
    inventory_name,
    quantity
FROM chess_project.Inventory i;


-- 3 представление, маскирующее contact_information, оставляя только
CREATE OR REPLACE VIEW mask_contact_info AS
SELECT
    club_id,
    club_name,
    club_location,
    '*(***)***-' || RIGHT(contact_information, 5),
    students_number
FROM
    chess_project.clubs;

-- 4 представление, маскирующее рейтинг судей(они могут стесняться своего рейтинга)
CREATE or replace VIEW mask_rating_elo AS
SELECT
   judge_id,
   repeat('*', length(to_char(judge_rating, '%%%%'))),
   full_name
FROM
    chess_project.Judges j;

--5 представление, маскирующее название города -- Санкт-Петербург, так как понятно, где все происходит
CREATE OR REPLACE VIEW mask_city AS
SELECT
    location_id,
    location_name,
    replace(address, 'Санкт-Петербург', '***')
FROM
    chess_project.Location l;


-- 6 представление, полностью маскирующее end_date
CREATE or replace VIEW mask_end_date AS
SELECT
    tournament_name,
    start_date,
    overlay(to_char(end_date, 'yyyy-mm-dd') placing '****-**-**' from 1) as end_date
FROM
    chess_project.tournaments t;
