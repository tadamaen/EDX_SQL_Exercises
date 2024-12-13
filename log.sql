-- *** The Lost Letter ***

-- Step 1: We can first obtain the address id of 900 Somerville Avenue from the addresses table
SELECT "id"
FROM "addresses"
WHERE "address" = '900 Somerville Avenue'; -- We obtain the address id of 432

-- Step 2: From the address id of 432, we can obtain the packages id numbers that are sent from 900 Somerville Avenue from the packages table
SELECT "id", "contents"
FROM "packages"
WHERE "from_address_id" = 432; -- We observe 4 package id numbers
                               -- We zoom in to package id number 384 as the content of the package with id number 384 is a Congratulatory letter

-- Step 3: From the package id number 384, we can find the address id of the unit who received the package from the packages table
SELECT "to_address_id"
FROM "packages"
WHERE "id" = 384; -- We obtain the address id of 854

-- Step 4: Using address id of 854, going back to the addresses table, we can find the address name and type to answer the questions
SELECT "address", "type"
FROM "addresses"
WHERE "id" = 854; -- We obtain the address of 2 Finnigan Street and Residential type

-- This sounds possible as the deliveryman might have misread 2 Finnegan Street as 2 Finnigan Street (1 letter difference)

-- *** The Devious Delivery ***

-- Step 1: Since given that FROM adress is not known, we treat it as null and hence select the id (package id) when from_address_id is NULL from packages dataset
SELECT "id", "contents", "to_address_id"
FROM "packages"
WHERE "from_address_id" IS NULL; -- We obtain package id of 5098, having Duck debugger content
                                 -- The address id of the receiver of the package is 50

-- Step 2: Since we have the address id of 50, we can find the address and type of address using the addresses table
SELECT "address", "type"
FROM "addresses"
WHERE "id" = 50; -- We obtain 123 Sesame Street, Residential type

-- Step 3: Check the status od the package (for action of drop) using scans table
SELECT *
FROM "scans"
WHERE "package_id" = 5098; -- We obtain an address id of 348 with action of drop

-- Step 4: Check the real address type of the address id of 348
SELECT *
FROM addresses
WHERE id = 348; -- We obtain the type of Police Station

-- *** The Forgotten Gift ***

-- Step 1: We can first obtain the address id of 109 Tileston Street from the addresses table
SELECT "id"
FROM "addresses"
WHERE "address" = '109 Tileston Street'; -- We obtain the address id of 9873

-- Step 2: From the address id of 9873, we can obtain the packages id numbers that are sent from 109 Tileston Street from the packages table
SELECT "id", "contents"
FROM "packages"
WHERE "from_address_id" =  9873; -- We observe only 1 package id number, 9523, containing flowers

-- Step 3: From the package id number 9523, we can find the address id of the unit who received the package from the packages table
SELECT "to_address_id"
FROM "packages"
WHERE "id" = 9523; -- We obtain the address id of 4983

-- Step 4: From the package id number 9523 and the adress id of 9873, check the status of the package from the scans table, as well as the driver id
SELECT "driver_id", "action"
FROM "scans"
WHERE "package_id" = 9523; -- Action is Pick, driver id will be 17 (not 11 as 11 is still drop)

-- Step 5: From the driver id of 17, we can find the driver name using the drivers table
SELECT "name"
FROM "drivers"
WHERE "id" = 17; -- We obtain the driver name of Mikel
