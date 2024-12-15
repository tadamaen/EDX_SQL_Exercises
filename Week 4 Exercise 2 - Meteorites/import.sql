-- Step 1: Create a temporary table and import all the data from the csv file to the temporary table first
CREATE TABLE "meteorites_temp" (
    "name" TEXT NOT NULL,
    "id" INTEGER,
    "nametype" TEXT NOT NULL,
    "class" TEXT NOT NULL,
    "mass" NUMERIC,
    "discovery" TEXT NOT NULL,
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY ("id")
);

-- Step 2: Import the csv file to the temporary table
.import --csv --skip 1 meteorites.csv meteorites_temp

-- Step 3: Change the blank values to NULL for the year, mass, lat and long columns
UPDATE "meteorites_temp"
SET "year" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "year" = ''
);

UPDATE "meteorites_temp"
SET "lat" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "lat" = ''
);

UPDATE "meteorites_temp"
SET "long" = NULL
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "long" = ''
);

-- Step 4: Round the values of the mass, lat and long columns to 2dp
UPDATE "meteorites_temp"
SET "mass" = (
    SELECT ROUND("mass", 2) FROM "meteorites_temp"
)
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "mass" != ROUND("mass", 2)
);

UPDATE "meteorites_temp"
SET "lat" = (
    SELECT ROUND("lat", 2) FROM "meteorites_temp"
)
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "lat" != ROUND("lat", 2)
);

UPDATE "meteorites_temp"
SET "long" = (
    SELECT ROUND("long", 2) FROM "meteorites_temp"
)
WHERE "id" IN (
    SELECT "id" FROM "meteorites_temp"
    WHERE "long" != ROUND("long", 2)
);

-- Step 5: Changing the ID column and create the table meteorites
CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT NOT NULL,
    "class" TEXT NOT NULL,
    "mass" NUMERIC,
    "discovery" TEXT NOT NULL,
    "year" NUMERIC,
    "lat" NUMERIC,
    "long" NUMERIC,
    PRIMARY KEY("id")
);

-- Step 6: Insert into the meteorites table from the temporary table + other changes + sorting
INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", "mass", "discovery", "year", "lat", "long"
FROM "meteorites_temp"
WHERE "nametype" != 'Relict'
ORDER BY "year", "name";
