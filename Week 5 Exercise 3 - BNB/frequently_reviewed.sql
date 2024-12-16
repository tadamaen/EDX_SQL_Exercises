-- In frequently_reviewed.sql, write a SQL statement to create a view named frequently_reviewed. This view should contain the 100
-- most frequently reviewed listings, sorted from most- to least-frequently reviewed. Ensure the view contains the following columns:

/*  1. id, which is the id of the listing from the listings table.
    2. property_type, from the listings table.
    3. host_name, from the listings table.
    4. reviews, which is the number of reviews the listing has received. */

-- If any two listings have the same number of reviews, sort by property_type (in alphabetical order),
-- followed by host_name (in alphabetical order).

CREATE VIEW "frequently_reviewed" AS
SELECT "listings"."id", "property_type", "host_name", COUNT("listings"."id") AS "reviews"
FROM "listings"
JOIN "reviews" ON "listings"."id" = "reviews"."listing_id"
GROUP BY "listings"."id"
ORDER BY "reviews" DESC, "property_type" ASC, "host_name" ASC
LIMIT 100;
