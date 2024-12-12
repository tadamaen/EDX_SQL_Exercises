-- Question of my choice

-- Question: From the books by Hiroshige, find the top 8 books (english_title) that has the
-- 1) Highest brightness
-- 2) Highest contrast (if there is a tie in brightness)
-- Rename as "TOP 8"

-- Code:
SELECT "english_title" AS "TOP 8"
FROM "views"
WHERE "artist" = 'Hiroshige'
ORDER BY "brightness" DESC, "contrast" DESC
LIMIT 8;
