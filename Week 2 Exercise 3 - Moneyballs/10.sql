SELECT "first_name", "last_name", "salary", "HR", "salaries"."year"
FROM "salaries"
JOIN "players" ON "salaries"."player_id" = "players"."id"
JOIN "performances" ON "players"."id" = "performances"."player_id"
WHERE "performances"."year" = "salaries"."year"
ORDER BY "players"."id" ASC, "salaries"."year" DESC, "HR" DESC, "salary" DESC;
