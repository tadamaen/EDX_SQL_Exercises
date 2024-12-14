-- Bonus Question:

-- Question: Find the top 10 schools (any type) with the highest dropout rate. Include the name of the schools and the
-- corresponding dropout rates

-- Code:
SELECT "name", "dropped"
FROM "schools"
JOIN "graduation_rates" ON "schools"."id" = "graduation_rates"."school_id"
ORDER BY "dropped" DESC
LIMIT 10; 
