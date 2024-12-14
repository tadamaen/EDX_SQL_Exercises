SELECT "salary" FROM "salaries"
JOIN "players" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "salaries"."year" = 2001
ORDER BY "HR" DESC
LIMIT 1; 
