-- Bonus Question:

-- Question: Find the heights of the top 10 tallest players who are not in the United States.
-- Include 3 columns, first name, last name and the height of the players

-- Code: 
SELECT "first_name", "last_name", "height" AS "Player Height"
FROM "players"
WHERE "birth_country" != 'USA'
ORDER BY "Player Height" DESC
LIMIT 10;
