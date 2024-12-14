SELECT "name", SUM("H") AS "total hits"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
WHERE "performances"."year" = 2001
GROUP BY "team_id"
ORDER BY "total hits" DESC
LIMIT 5; 
