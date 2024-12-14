SELECT "name" FROM "graduation_rates"
JOIN "schools" ON "graduation_rates"."school_id" = "schools"."id"
WHERE "graduated" = 100;
