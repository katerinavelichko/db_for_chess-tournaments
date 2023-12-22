CREATE SCHEMA IF NOT EXISTS view_chess_project;
set search_path = view_chess_project, public;

-- 1) Представление для отображения рейтинг судей и количества проведенных ими игр

CREATE OR REPLACE VIEW judges_statistcs AS
SELECT 
	j.full_name, j.judge_rating, COUNT(g.game_id) AS games_count
FROM  
	chess_project.Judges j
INNER JOIN
    chess_project.Games g
    ON
    j.judge_id = g.judge_id
GROUP BY 
	j.full_name, j.judge_rating;


-- 2)Представление об инвентаре, используемом на каждом турнире (наименование инвентаря, количество и название турнира)
CREATE OR REPLACE VIEW TournamentInventory AS
SELECT 
	t.tournament_name, i.inventory_name, SUM(i.quantity)
FROM 
	chess_project.Tournaments t
INNER JOIN 
	chess_project.Inventory_X_Tournaments it 
	ON 
	t.tournament_id = it.tournament_id
INNER JOIN 
	chess_project.Inventory i 
	ON 
	it.inventory_id = i.inventory_id
GROUP BY 
	t.tournament_name, i.inventory_name;


-- 3)Представление о результатах на турнирах, их важности и локации, с именами игроков белыми и черными фигурами
CREATE OR REPLACE VIEW TournamentResults AS
SELECT
    t.tournament_name,
    t.importance,
    g.result,
    l.location_name,
    pw.full_name AS player_w_figures,
    pb.full_name AS player_b_figures
FROM chess_project.Tournaments t
INNER JOIN
	chess_project.Games g 
	ON 
	t.tournament_id = g.tournament_id
INNER JOIN 
	chess_project.Location l 
	ON 
	t.location_id = l.location_id
INNER JOIN 
	chess_project.Players pw 
	ON 
	g.player_w_id = pw.player_id
INNER JOIN 
	chess_project.Players pb 
	ON 
	g.player_b_id = pb.player_id;
