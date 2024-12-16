-- In available.sql, write a SQL statement to create a view named available. This view should contain all dates that are
-- available at all listings. Ensure the view contains the following columns:

/*  1. id, which is the id of the listing from the listings table.
    2. property_type, from the listings table.
    3. host_name, from the listings table.
    4. date, from the availabilities table, which is the date of the availability. */

CREATE VIEW "available" AS
SELECT "listings"."id", "property_type", "host_name", "date"
FROM "listings"
JOIN "availabilities" ON "listings"."id" = "availabilities"."listing_id"
WHERE "available" = 'TRUE';
