WITH top_hits AS (
  SELECT "first_name", "last_name"
  FROM "players"
  JOIN "performances" ON "players"."id" = "performances"."player_id"
  JOIN "salaries" ON "players"."id" = "salaries"."player_id"
  WHERE "H" != 0
    AND "salaries"."year" = 2001
    AND "performances"."year" = "salaries"."year"
  ORDER BY "salary"/"H" ASC, "first_name" ASC, "last_name" ASC
  LIMIT 10
),
top_RBI AS (
  SELECT "first_name", "last_name"
  FROM "players"
  JOIN "performances" ON "players"."id" = "performances"."player_id"
  JOIN "salaries" ON "players"."id" = "salaries"."player_id"
  WHERE "RBI" != 0
    AND "salaries"."year" = 2001
    AND "performances"."year" = "salaries"."year"
  ORDER BY "salary"/"RBI" ASC, "first_name" ASC, "last_name" ASC
  LIMIT 10
)

SELECT "first_name", "last_name"
FROM top_hits
INTERSECT
SELECT "first_name", "last_name"
FROM top_RBI
ORDER BY "last_name" ASC;

