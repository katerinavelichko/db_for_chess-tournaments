INSERT INTO Judges(full_name, qualification, date_of_birth, judge_rating)
values ('Павлов Михаил Константинович', '1', '2003-05-04', 2111);
INSERT INTO Judges(full_name, qualification, date_of_birth, judge_rating)
values ('Сорокин Артем Вадимович', '2', '2004-09-03', 1830);
INSERT INTO Judges(full_name, qualification, date_of_birth, judge_rating)
values ('Лазарев Максим Дмитриевич', '3', '2003-05-04', 1366);
INSERT INTO Judges(full_name, qualification, date_of_birth, judge_rating)
values ('Пономарев Денис Алексеевич', '2', '2003-02-12', 1898);
INSERT INTO Judges(full_name, qualification, date_of_birth, judge_rating)
values ('Гринблат Артемий Глебович', 'СВК', '2001-03-20', 2212);
INSERT INTO Judges(full_name, qualification, date_of_birth, judge_rating)
values ('Жуков Константин Федорович', 'Ю', '2007-11-14', 1550);


INSERT INTO Clubs(club_name, club_location, contact_information, students_number)
values ('Les Chess', 'улица Михаила Дудина, 25к1, Санкт-Петербург', '+7(981)962-20-73', 68);
INSERT INTO Clubs(club_name, club_location, contact_information, students_number)
values ('Шахматный Клуб имени Бориса Спасского', 'ул. Бассейная, 57, Санкт-Петербург', '8(812)409-83-94', 542);
INSERT INTO Clubs(club_name, club_location, contact_information, students_number)
values ('Современник', 'Купчинская улица, 32 к1 литВ, Санкт-Петербург', '+7(812)778-04-52', 79);
INSERT INTO Clubs(club_name, club_location, contact_information, students_number)
values ('Аничков Дворец', 'Санкт-Петербург, Невский пр., 39Б', '570-37-81', 345);
INSERT INTO Clubs(club_name, club_location, contact_information, students_number)
values ('СШОР по шахматам и шашкам', 'Большая Конюшенная ул., 25, Санкт-Петербург', '8(812)571-57-23', 531);


INSERT INTO Location(location_name, address, contact_information)
values ('Отель Парк Крестовский', 'Северная дор., 12, Санкт-Петербург', '8(812)406-97-77');
INSERT INTO Location(location_name, address, contact_information)
values ('Отель Санкт-Петербург', 'Пироговская набережная, д. 5/2', '+7(812)380-19-19');
INSERT INTO Location(location_name, address, contact_information)
values ('Гостиница Россия', 'пл. Чернышевского, 11, Санкт-Петербург', Null);
INSERT INTO Location(location_name, address, contact_information)
values ('Отель Азимут', 'Санкт-Петербург, Лермонтовский проспект, д. 43/1', '+7(812)740-26-40');
INSERT INTO Location(location_name, address, contact_information)
values ('Шахматный клуб "Медный всадник"', 'Сапёрный пер., 10, Санкт-Петербург', '8(981)790-87-48');


INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (3, 'DGT 2010', 120, 'Шахматные часы');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (4, 'DGT 2010', 90, 'Шахматные часы');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (2, 'DGT 3000', 15, 'Шахматные часы');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (2, 'Доска цельная шахматная деревянная №6', 225, 'Шахматные доски');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (5, 'Доска шахматная виниловая(большая)', 320, 'Шахматные доски');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (4, 'DGT Стаунтон №6', 550, 'Шахматные фигуры');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (3, 'DGT Стаунтон №5', 340, 'Шахматные фигуры');
INSERT INTO Inventory(club_id, inventory_name, quantity, type)
values (2, 'DGT Стаунтон №5', 210, 'Шахматные фигуры');


INSERT INTO Tournaments(location_id, tournament_name, start_date, end_date, importance)
values (2, 'Нева-Опен 2023', '2023-02-02', '2023-02-05', 4);
INSERT INTO Tournaments(location_id, tournament_name, start_date, end_date, importance)
values (1, 'Чемпионат Санкт-Петербурга, среди юношей до 17 лет', '2023-09-04', '2023-09-12', 2);
INSERT INTO Tournaments(location_id, tournament_name, start_date, end_date, importance)
values (5, 'Чемпионат Адмиралтейского района, среди девушек до 19 лет', '2023-05-18', '2023-05-22', 3);
INSERT INTO Tournaments(location_id, tournament_name, start_date, end_date, importance)
values (4, 'Мемориал Чигорина', '2023-08-22', '2023-08-30', 1);
INSERT INTO Tournaments(location_id, tournament_name, start_date, end_date, importance)
values (4, 'Петербургское лето', '2023-08-22', '2023-08-29', 2);


INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (NULL, '2023-01-01', '2023-12-31', 'Левин Евгений Алексеевич', 2486, '1990-12-23', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (NULL, '2023-01-01', '2023-12-31', 'Захарцов Владимир Вячеславович', 2509, '1993-02-03', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (NULL, '2023-01-01', '2023-12-31', 'Гребнев Алексей Николаевич', 2525, '2007-11-05', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (NULL, '2023-01-01', '2023-12-31', 'Звягинцев Вадим Викторович', 2567, '1976-12-29', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (NULL, '2023-01-01', '2023-12-31', 'Александров Алексей', 2447, '1992-06-06', 'BLR');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (NULL, '2023-01-01', '2023-12-31', 'Афанасьев Никита Андреевич', 2540, '2004-12-02', 'RUS');

INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-01-01', '2023-08-01', 'Воробьёва Варвара Алексеевна', 1713, '2004-10-12', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-08-01', '2023-12-31', 'Воробьёва Варвара Алексеевна', 1563, '2004-10-12', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (3, '2023-01-01', '2023-12-31', 'Воробьёва Екатерина Алексеевна', 1787, '2005-08-26', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-01-01', '2023-12-31', 'Щедрова Татьяна Михайловна', 1773, '2004-11-01', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-02-01', 'Дудкина Ульяна Дмитриевна', 1947, '2005-03-18', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-02-01', '2023-12-31', 'Дудкина Ульяна Дмитриевна', 1988, '2005-03-18', 'RUS');

INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (4, '2023-01-01', '2023-12-31', 'Курченко Егор Сергеевич', 2239, '2007-11-02', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (5, '2023-01-01', '2023-12-31', 'Козлов Алексей Георгиевич', 2069, '2007-09-09', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (3, '2023-01-01', '2023-12-31', 'Толстых Кирилл', 1816, '2007-09-19', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (5, '2023-01-01', '2023-12-31', 'Филиппов Кирилл Павлович', 1972, '2007-05-20', 'RUS');

INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-12-31', 'Стрижевская Серафима Михайловна', 1340, '2012-01-13', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-01-01', '2023-12-31', 'Симкин Александр Павлович', 1412, '1949-08-25', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (3, '2023-01-01', '2023-12-31', 'Апатьев Николай Александрович', 1402, '2012-04-26', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-03-01', 'Кириллов Егор Андреевич', 1123, '2004-10-22', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-03-01', '2023-06-01', 'Кириллов Егор Андреевич', 1358, '2004-10-22', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-06-01', '2023-12-31', 'Кириллов Егор Андреевич', 1290, '2004-10-22', 'RUS');

INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (4, '2023-01-01', '2023-02-23', 'Санчес-Шананин Адриан', 1787, '2010-04-04', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (4, '2023-02-23', '2023-12-31', 'Санчес-Шананин Адриан', 1853, '2010-04-04', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-01-01', '2023-12-31', 'Артемьев Мирон Сергеевич', 1370, '2009-03-29', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (2, '2023-01-01', '2023-12-31', 'Виноградов Артём Павлович', 1534, '2010-03-02', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (5, '2023-01-01', '2023-12-31', 'Головченко Богдан', 2007, '2009-12-12', 'RUS');
INSERT INTO Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, '2023-01-01', '2023-12-31', 'Володин Глеб Иванович', 1347, '2009-04-16', 'RUS');


INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (1, 2, 15, 16, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (1, 2, 15, 18, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (1, 2, 16, 17, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (1, 2, 16, 18, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (1, 2, 17, 15, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (1, 2, 18, 17, '0,5:0,5');

INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (2, 1, 11, 12, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (2, 6, 14, 13, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (2, 6, 12, 14, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (2, 6, 14, 11, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (2, 6, 13, 12, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (2, 1, 11, 13, '0:1');


INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (3, 4, 10, 7, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (3, 3, 8, 7, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (3, 3, 7, 9, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (3, 3, 8, 9, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (3, 4, 9, 10, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (3, 4, 10, 8, '1:0');


INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 1, 1, 6, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 2, 1, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 2, 3, 5, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 6, 5, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 1, 1, 2, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 1, 5, 2, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 1, 2, 3, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 1, 3, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 5, 4, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 2, 4, 3, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 2, 4, 1, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 1, 5, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 4, 2, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 3, 2, 6, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (4, 1, 6, 3, '0,5:0,5');


INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 19, 23, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 23, 22, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 19, 20, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 22, 20, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 20, 23, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 23, 21, '0,5:0,5');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 22, 19, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 21, 22, '1:0');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 20, 21, '0:1');
INSERT INTO Games(tournament_id, judge_id, player_w_id, player_b_id, result)
values (5, 5, 21, 19, '1:0');
