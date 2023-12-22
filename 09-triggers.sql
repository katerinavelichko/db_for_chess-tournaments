--триггер будет обновлять valid_to_dttm предыдущей записи игрока на текущую дату
-- при вставке новой записи, если у предыдущей записи valid_to_dttm имеет значение '2023-12-31'
-- что позволит поддерживать историю изменений для каждого игрока
CREATE OR REPLACE FUNCTION update_previous_player()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE chess_project.Players
    SET valid_to_dttm = CURRENT_DATE
    WHERE full_name = NEW.full_name AND club_id = NEW.club_id AND valid_to_dttm = '2023-12-31' ;


    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_previous_player_trigger
BEFORE INSERT ON chess_project.Players
FOR EACH ROW
EXECUTE FUNCTION update_previous_player();

--для ппрверки
INSERT INTO chess_project.Players(club_id, valid_from_dttm, valid_to_dttm, full_name, rating_elo, date_of_birth, nationality)
values (1, CURRENT_DATE, '2023-12-31', 'Пупкин Вася', 2500, '2000-01-01', 'RUS');
