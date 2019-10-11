-- Query to check successful load
SELECT * FROM influence;
SELECT * FROM draft;

-- Join tables on player_name
SELECT draft.player_name, draft.draftYear, draft.draftRound, draft.draftOverall, draft.draftFrom
FROM draft
INNER JOIN influence
ON UPPER(draft.player_name) = UPPER(influence.player_name);