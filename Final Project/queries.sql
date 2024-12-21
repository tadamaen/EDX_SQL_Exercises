-- In this SQL file, write (and comment!) the typical SQL queries users will run on your database

-- Add contents into districts table
INSERT INTO "districts" ("district_name")
VALUES ("Aljunied"),
       ("Ang Mo Kio"),
       ("Bishan-Toa Payoh"),
       ("Bukit Batok"),
       ("Bukit Panjang"),
       ("Choa Chu Kang"),
       ("East Coast"),
       ("Holland-Bukit Timah"),
       ("Hong Kah North"),
       ("Hougang"),
       ("Jalan Besar"),
       ("Jurong"),
       ("Kebun Bahru"),
       ("MacPherson"),
       ("Marine Parade"),
       ("Marsling-Yew Tee"),
       ("Marymount"),
       ("Mountbatten"),
       ("Nee Soon"),
       ("Pasir Ris-Punggol"),
       ("Pioneer"),
       ("Potong Pasir"),
       ("Punggol West"),
       ("Radin Mas"),
       ("Sembawang"),
       ("Sengkang"),
       ("Tampines"),
       ("Tanjong Pagar"),
       ("West Coast"),
       ("Yio Chu Kang"),
       ("Yuhua");

-- Add contents into households table
INSERT INTO "households" ("district_id", "num_blocks", "num_households")
VALUES (1, 300, 25000),
       (2, 650, 76000),
       (3, 500, 52000),
       (4, 550, 57000),
       (5, 400, 43000),
       (6, 450, 51000),
       (7, 800, 74000),
       (8, 120, 9000),
       (9, 180, 17000),
       (10, 600, 64000),
       (11, 580, 58000),
       (12, 950, 92000),
       (13, 400, 38000),
       (14, 350, 34000),
       (15, 250, 21000),
       (16, 560, 65000),
       (17, 210, 19000),
       (18, 80, 6000),
       (19, 450, 51000),
       (20, 700, 66000),
       (21, 320, 34000),
       (22, 850, 76000),
       (23, 300, 28000),
       (24, 540, 49000),
       (25, 999999999, 560000000000000),
       (26, 370, 33000),
       (27, 780, 81000),
       (28, 430, 52000),
       (29, 370, 41000),
       (30, 150, 11000),
       (31, 220, 19000);

-- Add contents into location table
INSERT INTO "location" ("district_id", "location")
VALUES (1, 'East'),
       (2, 'Central'),
       (3, 'Central'),
       (4, 'West'),
       (5, 'Central'),
       (6, 'West'),
       (7, 'East'),
       (8, 'Central'),
       (9, 'West'),
       (10, 'East'),
       (11, 'South'),
       (12, 'West'),
       (13, 'North'),
       (14, 'East'),
       (15, 'East'),
       (16, 'North'),
       (17, 'Central'),
       (18, 'South'),
       (19, 'North'),
       (20, 'East'),
       (21, 'West'),
       (22, 'East'),
       (23, 'North'),
       (24, 'South'),
       (25, 'North'),
       (26, 'North'),
       (27, 'East'),
       (28, 'South'),
       (29, 'West'),
       (30, 'North'),
       (31, 'West');

-- Add contents into parties table
INSERT INTO "parties" ("district_id", "first_party", "second_party")
VALUES (1, 'PAP', 'WP'),
       (2, 'PAP', 'RP'),
       (3, 'PAP', 'SPP'),
       (4, 'PAP', 'SDP'),
       (5, 'PAP', 'SDP'),
       (6, 'PAP', 'PSP'),
       (7, 'PAP', 'WP'),
       (8, 'PAP', 'SDP'),
       (9, 'PAP', 'PSP'),
       (10, 'PAP', 'WP'),
       (11, 'PAP', 'PV'),
       (12, 'PAP', 'RDU'),
       (13, 'PAP', 'PSP'),
       (14, 'PAP', 'PPP'),
       (15, 'PAP', 'WP'),
       (16, 'PAP', 'SDP'),
       (17, 'PAP', 'PSP'),
       (18, 'PAP', 'PV'),
       (19, 'PAP', 'PSP'),
       (20, 'PAP', 'PV'),
       (21, 'PAP', 'PSP'),
       (22, 'PAP', 'SPP'),
       (23, 'PAP', 'WP'),
       (24, 'PAP', 'RP'),
       (25, 'PAP', 'NSP'),
       (26, 'PAP', 'WP'),
       (27, 'PAP', 'NSP'),
       (28, 'PAP', 'PSP'),
       (29, 'PAP', 'PSP'),
       (30, 'PAP', 'PSP'),
       (31, 'PAP', 'SDP');

-- Add contents into votes table
INSERT INTO "votes" ("district_id", "first_party_%votes", "second_party_%votes")
VALUES (1, 35.5, 64.5),
       (2, 62.3, 37.7),
       (3, 54.1, 45.9),
       (4, 46.2, 53.8),
       (5, 44.5, 55.5),
       (6, 49.6, 50.4),
       (7, 42.7, 57.3),
       (8, 56.9, 43.1),
       (9, 51.2, 48.8),
       (10, 37.4, 62.6),
       (11, 52.5, 47.5),
       (12, 64.0, 36.0),
       (13, 53.6, 46.4),
       (14, 63.3, 36.7),
       (15, 46.8, 53.2),
       (16, 54.1, 45.9),
       (17, 44.4, 55.6),
       (18, 68.2, 31.8),
       (19, 49.8, 50.2),
       (20, 54.2, 45.8),
       (21, 51.8, 48.2),
       (22, 47.5, 52.5),
       (23, 48.4, 51.6),
       (24, 62.2, 37.8),
       (25, 99.9, 0.1),
       (26, 61.0, 39.0),
       (27, 53.3, 46.7),
       (28, 54.0, 46.0),
       (29, 39.7, 60.3),
       (30, 48.8, 51.2),
       (31, 58.8, 41.2);

-- Find the top 5 districts in Singapore with the highest population size (number of households)
SELECT "district_name" AS "District Name", "num_households" AS "Population Size"
FROM "households"
JOIN "districts" ON "households"."district_id" = "districts"."id"
ORDER BY "Population Size" DESC, "District Name" ASC
LIMIT 5;

-- The population size of Singapore is slightly over 5 million, hence we observe that Sembawang having a population size
-- of 560000000000000 is not possible (that is greater than the population of the entire world!). Hence, update the table such that
-- it displays the correct population size and num_blocks of Sembawang

-- Real Number of blocks of Sembawang: 770
-- Real Number of households of Sembawang: 72000

-- Step 1: Find the district_id of Sembawang from the districts table
SELECT "id" FROM "districts"
WHERE "district_name" = 'Sembawang';

-- Step 2: Update the households table accordingly
UPDATE "households"
SET "num_blocks" = 770, "num_households" = 72000
WHERE "district_id" = 25;

-- Provide the statistics of the election, including the district name, first_party, second_party, first party percentage and
-- second party percentage
SELECT "district_name" AS "District Name", "first_party" AS "First Party", "second_party" AS "Second Party",
       "first_party_%votes" AS "First Party Votes Percentage", "second_party_%votes" AS "Second Party Votes Percentage"
FROM "districts"
INNER JOIN "parties" ON "districts"."id" = "parties"."district_id"
INNER JOIN "votes" ON "districts"."id" = "votes"."district_id";

-- Sort the results by the first party votes percentage in descending order
SELECT "district_name" AS "District Name", "first_party" AS "First Party", "second_party" AS "Second Party",
       "first_party_%votes" AS "First Party Votes Percentage", "second_party_%votes" AS "Second Party Votes Percentage"
FROM "districts"
INNER JOIN "parties" ON "districts"."id" = "parties"."district_id"
INNER JOIN "votes" ON "districts"."id" = "votes"."district_id"
ORDER BY "First Party Votes Percentage" DESC;

-- We noticed an error here! There is a lot of hype about the recent PAP fall in Sengkang GRC, but it seems that out table
-- shows that PAP has a higher percentage of 61% while the opposition has a percentage of only 39%. Probably there is a mixed up
-- in the order of votes here (PAP should be 39%, WP should be 61%). Fix the issue :)

-- Step 1: Find the district_id of Sengkang from the districts table
SELECT "id" FROM "districts"
WHERE "district_name" = 'Sengkang';

-- Step 2: Update the votes table accordingly
UPDATE "votes"
SET "first_party_%votes" = 39, "second_party_%votes" = 61
WHERE "district_id" = 26;

-- Sort the results by the first party votes percentage in descending order
SELECT "district_name" AS "District Name", "first_party" AS "First Party", "second_party" AS "Second Party",
       "first_party_%votes" AS "First Party Votes Percentage", "second_party_%votes" AS "Second Party Votes Percentage"
FROM "districts"
INNER JOIN "parties" ON "districts"."id" = "parties"."district_id"
INNER JOIN "votes" ON "districts"."id" = "votes"."district_id"
ORDER BY "First Party Votes Percentage" DESC;

-- Find the overall population percentage who voted for the first party (PAP) and the second party (Opposition),
-- grouped by the various locations
SELECT "location", ROUND(AVG("first_party_%votes"), 1) AS "First Party Votes", ROUND(AVG("second_party_%votes"), 1) AS "Second Party Votes"
FROM "districts"
INNER JOIN "location" ON "districts"."id" = "location"."district_id"
INNER JOIN "votes" ON "districts"."id" = "votes"."district_id"
GROUP BY "location";

-- Now, the governmemt is going to include an island, Pulau Ubin, to be part of a GRC group as well.
-- Pulau Ubin properties:
-- 1. Location - East
-- 2. Number of blocks - 2
-- 3. Household Population - 10
-- 2. First Party - PAP
-- 3. Second Party - PSP
-- 4. First Party Votes - 10.0%
-- 5. Second Party Votes - 90.0%

INSERT INTO "districts" ("district_name")
VALUES ("Pulau Ubin");

INSERT INTO "households" ("district_id", "num_blocks", "num_households")
VALUES (32, 2, 10);

INSERT INTO "location" ("district_id", "location")
VALUES (32, "East");

INSERT INTO "parties" ("district_id", "first_party", "second_party")
VALUES (32, "PAP", "PSP");

INSERT INTO "votes" ("district_id", "first_party_%votes", "second_party_%votes")
VALUES (32, 10.0, 90.0);

-- Lastly, the government wants to delete 1 row of the votes table where the id matches Sembawang as
-- there is a corruption happening in the area (1 person in charge of the voting station has been caught
-- adding 1 million votes in a ballot box and since the user supports PAP, all the 1 million votes
-- supporting PAP are added, leading to a PAP winning rate of 99.9%)

DELETE FROM "votes"
WHERE "district_id" = 25;

-- Recalculate the first and second party votes grouped by each location
SELECT "location", ROUND(AVG("first_party_%votes"), 1) AS "First Party Votes", ROUND(AVG("second_party_%votes"), 1) AS "Second Party Votes"
FROM "districts"
INNER JOIN "location" ON "districts"."id" = "location"."district_id"
INNER JOIN "votes" ON "districts"."id" = "votes"."district_id"
GROUP BY "location";

-- Conclusion:
-- Let's find the percentage average of PAP versus the opposition parties and see which is higher (for all districts)!
SELECT ROUND(SUM("first_party_%votes") / 31, 1) AS "Average Percentage First Party Votes",
       ROUND(SUM("second_party_%votes") / 31, 1) AS "Average Percentage Second Party Votes"
FROM "votes";

-- It seems that the Second Party Votes (50.2%) is higher than the First Party Votes (49.8%)
-- Opposition Wins!

-- NOTE: This statistics differs from the actual election result (PAP won) due to several reasons
-- 1) Some districts are added and some are removed to simplify the number of rows in each table
-- 2) Figures are altered slightly for more excitement of the party that will win the fictitious election
-- 3) To have more effective selection, filtering and joining of the tables for the SQL questions
