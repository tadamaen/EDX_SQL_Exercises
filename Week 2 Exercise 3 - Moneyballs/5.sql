SELECT DISTINCT "name"
FROM "teams"
JOIN "performances" ON "teams"."id" = "performances"."team_id"
JOIN "players" ON "performances"."player_id" = "players"."id"
WHERE ("first_name" = 'Satchel') AND ("last_name" = 'Paige');
