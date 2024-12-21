-- In this SQL file, write (and comment!) the schema of your database, including the CREATE TABLE, CREATE INDEX, CREATE VIEW, etc. statements that compose it

-- NOTE: Statistics might not be fully accurate and are subjected to changes

-- Represent the different districts in Singapore
CREATE TABLE "districts" (
    "id" INTEGER,
    "district_name" TEXT NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);

-- Represent the number of blocks and households in the different districts of Singapore
CREATE TABLE "households" (
    "id" INTEGER,
    "district_id" INTEGER,
    "num_blocks" INTEGER NOT NULL,
    "num_households" INTEGER NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);

-- Represent the areas of Singapore in terms of geographical location (North, South, East, West, Central)
CREATE TABLE "location" (
    "id" INTEGER,
    "district_id" INTEGER,
    "location" TEXT NOT NULL CHECK("location" IN ("North", "South", "East", "West", "Central")),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);

-- Represent the parties in the various districts (PAP, SDP, PSP, Workers' Party etc.)
CREATE TABLE "parties" (
    "id" INTEGER,
    "district_id" INTEGER,
    "first_party" TEXT NOT NULL,
    "second_party" TEXT NOT NULL,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);

-- Represent the population percentage of households who support the first or second party
CREATE TABLE "votes" (
    "id" INTEGER,
    "district_id" INTEGER,
    "first_party_%votes" NUMERIC NOT NULL CHECK("first_party_%votes" BETWEEN 0 AND 100),
    "second_party_%votes" NUMERIC NOT NULL CHECK("second_party_%votes" BETWEEN 0 AND 100),
    PRIMARY KEY ("id"),
    FOREIGN KEY ("district_id") REFERENCES "districts"("id")
);

-- Creating Indexes to speed up common searches
CREATE INDEX "district_name_index" ON "districts"("district_name");
CREATE INDEX "num_blocks_index" ON "households"("num_blocks");
CREATE INDEX "num_househlds_index" ON "households"("num_households");
CREATE INDEX "locations_index" ON "location"("location");
CREATE INDEX "first_party_index" ON "votes"("first_party_%votes");
CREATE INDEX "second_party_index" ON "votes"("second_party_%votes");
