SELECT "city", COUNT("city") AS "Number Of Public Schools"
FROM "schools"
WHERE "type" = 'Public School'
GROUP BY "city"
HAVING "Number Of Public Schools" <= 3
ORDER BY "Number Of Public Schools" DESC, "city" ASC;
