delete from rs.cwevent_raw;

copy rs.cwevent_raw 
FROM 'c:/Data/Retrosheet/CSVs/Postgres/event_raw.csv'
WITH CSV;

delete from rs.cwgame_raw;

copy rs.cwgame_raw 
FROM 'c:/Data/Retrosheet/CSVs/Postgres/game_raw.csv'
WITH CSV;

delete from rs.cwsub_raw;

copy rs.cwsub_raw 
FROM 'c:/Data/Retrosheet/CSVs/Postgres/sub_raw.csv'
WITH CSV;