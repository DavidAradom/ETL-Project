-- Query to check successful load
SELECT * FROM influence;
SELECT * FROM draft;

-- Join tables on player_name
SELECT influence.player_name, influence."AGE", influence."W_PCT", influence."SALARY_MILLIONS", influence."TWITTER_FOLLOWER_COUNT_MILLIONS"
FROM influence
INNER JOIN draft
ON UPPER(influence.player_name) = UPPER(draft.player_name);

-- Sort by highest twitter follower count
SELECT influence.player_name, influence."AGE", influence."W_PCT", influence."SALARY_MILLIONS", influence."TWITTER_FOLLOWER_COUNT_MILLIONS"
FROM influence
INNER JOIN draft
ON UPPER(influence.player_name) = UPPER(draft.player_name)
ORDER BY influence."TWITTER_FOLLOWER_COUNT_MILLIONS" DESC;

-- Sort by highest salary
SELECT influence.player_name, influence."AGE", influence."W_PCT", influence."SALARY_MILLIONS", influence."TWITTER_FOLLOWER_COUNT_MILLIONS"
FROM influence
INNER JOIN draft
ON UPPER(influence.player_name) = UPPER(draft.player_name)
ORDER BY influence."SALARY_MILLIONS" DESC;

-- Sort by highest winning percentage
SELECT influence.player_name, influence."AGE", influence."W_PCT", influence."SALARY_MILLIONS", influence."TWITTER_FOLLOWER_COUNT_MILLIONS"
FROM influence
INNER JOIN draft
ON UPPER(influence.player_name) = UPPER(draft.player_name)
ORDER BY influence."W_PCT" DESC;
