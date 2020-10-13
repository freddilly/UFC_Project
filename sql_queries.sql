CREATE TABLE ufc_fights (
	Fight_ID INT,
	R_Fighter VARCHAR,
	B_Fighter VARCHAR,
	WINNER VARCHAR,
	title_bout BOOLEAN
);

SELECT * FROM ufc_fights;
SELECT COUNT (Fight_ID) FROM ufc_fights;

CREATE TABLE blue_fighters (
	Fight_ID INT,
	B_fighter VARCHAR,
	B_current_streak INT,
	B_avg_SIG_STR_landed DECIMAL,
	B_avg_opp_SIG_STR_landed DECIMAL,
	B_total_time_fought_seconds DECIMAL,
	B_Stance VARCHAR,
	B_height_cms DECIMAL,
	B_Reach_cms DECIMAL,
	B_age INT,
	B_Record INT,
	B_Takedown_Diff DECIMAL
);

SELECT * FROM blue_fighters;
SELECT COUNT(Fight_ID) FROM blue_fighters;

CREATE TABLE red_fighters (
	Fight_ID INT,
	R_Fighter VARCHAR,
	R_current_streak INT,
	R_avg_SIG_STR_landed DECIMAL,
	R_avg_opp_SIG_STR_landed DECIMAL,
	R_total_time_fought_seconds DECIMAL,
	R_Stance VARCHAR,
	R_Height_cms DECIMAL,
	R_Reach_cms DECIMAL,
	R_age INT,
	R_Record INT,
	R_Takedown_Diff DECIMAL
);

SELECT * FROM red_fighters;
SELECT COUNT (Fight_ID) FROM red_fighters;

--Join the red_fighters and blue_fighters table
SELECT r.Fight_ID,
	r.R_Fighter,
	r.R_current_streak,
	r.R_avg_SIG_STR_landed,
	r.R_avg_opp_SIG_STR_landed,
	r.R_total_time_fought_seconds,
	r.R_Stance,
	r.R_Height_cms,
	r.R_Reach_cms,
	r.R_age,
	r.R_Record,
	r.R_Takedown_Diff,
	b.B_fighter,
	b.B_current_streak,
	b.B_avg_SIG_STR_landed,
	b.B_avg_opp_SIG_STR_landed,
	b.B_total_time_fought_seconds,
	b.B_Stance,
	b.B_height_cms,
	b.B_Reach_cms,
	b.B_age,
	b.B_Record,
	b.B_Takedown_Diff 
INTO all_fighters
FROM red_fighters AS r
INNER JOIN blue_fighters as b
ON r.Fight_ID = b.Fight_ID;


SELECT * FROM all_fighters;
SELECT * FROM blue_fighters;
SELECT * FROM red_fighters;
SELECT * FROM ufc_fights;

--Join the all_fighters and ufc_fights tables
SELECT af.Fight_ID,
	af.R_Fighter,
	af.R_current_streak,
	af.R_avg_SIG_STR_landed,
	af.R_avg_opp_SIG_STR_landed,
	af.R_total_time_fought_seconds,
	af.R_Stance,
	af.R_Height_cms,
	af.R_Reach_cms,
	af.R_age,
	af.R_Record,
	af.R_Takedown_Diff,
	af.B_fighter,
	af.B_current_streak,
	af.B_avg_SIG_STR_landed,
	af.B_avg_opp_SIG_STR_landed,
	af.B_total_time_fought_seconds,
	af.B_Stance,
	af.B_height_cms,
	af.B_Reach_cms,
	af.B_age,
	af.B_Record,
	af.B_Takedown_Diff, 
	ufc.winner,
	ufc.title_bout
INTO all_fight_details
FROM all_fighters AS af
INNER JOIN ufc_fights as ufc
ON af.Fight_ID = ufc.Fight_ID;

SELECT * FROM all_fight_details;