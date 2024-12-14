SELECT "city", COUNT("city") AS "Number Of Public Schools"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
ORDER BY "Number Of Public Schools" DESC, "city" ASC
LIMIT 10;
