-- In one_bedrooms.sql, write a SQL statement to create a view named one_bedrooms. This view should contain all listings that
-- have exactly one bedroom. Ensure the view contains the following columns:

/*  1. id, which is the id of the listing from the listings table.
    2. property_type, from the listings table.
    3. host_name, from the listings table.
    4. accommodates, from the listings table. */

CREATE VIEW "one_bedrooms" AS
SELECT "id", "property_type", "host_name", "accomodates"
FROM "listings"
WHERE "bedrooms" = 1;
