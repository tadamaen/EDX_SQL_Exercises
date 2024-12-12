-- Optional Question

-- Question: List the tiles and production codes of books in Season 1 and Season 2 where the first letter of the title starts with T.

-- SQL Code

SELECT "title", "production_code" FROM "episodes"
WHERE ("season" IN (1, 2)) AND ("title" LIKE 'T%');
