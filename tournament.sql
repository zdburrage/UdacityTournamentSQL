-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.
DROP DATABASE IF EXISTS tournament;
DROP TABLE IF EXISTS matches CASCADE;
DROP TABLE IF EXISTS players CASCADE;
DROP VIEW IF EXISTS standings CASCADE;

CREATE DATABASE tournament;

CREATE TABLE players (
	id serial primary key,
	name text

);


CREATE TABLE matches (
	id serial primary key,
	winner INTEGER,
	loser INTEGER,
	FOREIGN KEY(winner) REFERENCES players(id),
	FOREIGN KEY (loser) REFERENCES players(id)

);


--Subqueries to get wins and matches for each player
CREATE VIEW standings AS
	SELECT players.id,
		players.name,
		(SELECT COUNT(*) FROM matches WHERE players.id = matches.winner) AS wins,
		(SELECT COUNT(*) FROM matches WHERE players.id = matches.winner OR players.id = matches.loser) AS matches
	FROM players
	ORDER BY wins DESC;


--Similar to standings, but total matches not needed. Ordering players by wins and then taking pairs in python code
CREATE VIEW swissPairings AS
	SELECT players.id, players.name, (SELECT COUNT(*) FROM matches WHERE players.id = matches.winner) AS wins
	FROM players
	ORDER BY wins DESC;


