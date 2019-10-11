-- Create Two Tables
CREATE TABLE draft (
  id INT PRIMARY KEY,
	PLAYER_NAME varchar(50),
	draftYear int,
	draftRound int,
	draftSelection int,
	draftOverall int,
	firstName varchar(50),
	lastName varchar(50),
	draftFrom varchar(250)
);

CREATE TABLE influence (
  id INT PRIMARY KEY,
  PLAYER_NAME VARCHAR(50),
  TEAM_ABBREVIATION VARCHAR(50),
  AGE INT,
	W_PCT INT,
	SALARY_MILLIONS INT,
	TWITTER_FOLLOWER_COUNT_MILLIONS INT
);
