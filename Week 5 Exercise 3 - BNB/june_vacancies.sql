-- In june_vacancies.sql, write a SQL statement to create a view named june_vacancies. This view should contain all listings
-- and the number of days in June of 2023 that they remained vacant. Ensure the view contains the following columns:

/*  1. id, which is the id of the listing from the listings table.
    2. property_type, from the listings table.
    3. host_name, from the listings table.
    4. days_vacant, which is the number of days in June of 2023, that the given listing was marked as available. */

CREATE VIEW "june_vacancies" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("listings"."id") AS "days_vacant"
FROM "listings"
JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE ("date" >= '2023-06-01') AND ("date" <= '2023-06-30') AND ("available" = 'TRUE')
GROUP BY "listings"."id";
