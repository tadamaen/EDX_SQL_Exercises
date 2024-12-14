SELECT "first_name", "last_name", "salary"/"H" AS "dollars per hit"
FROM "players"
JOIN "performances" ON "players"."id" = "performances"."player_id"
JOIN "salaries" ON "players"."id" = "salaries"."player_id"
WHERE ("H" != 0) AND ("salaries"."year" = 2001) AND ("performances"."year" = "salaries"."year")
ORDER BY "dollars per hit" ASC, "first_name" ASC, "last_name" ASC
LIMIT 10;
