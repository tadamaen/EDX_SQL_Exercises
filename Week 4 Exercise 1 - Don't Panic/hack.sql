-- Question 1: Alter the password of the website’s administrative account, admin, to instead be “oops!”

-- Code:
UPDATE "users"
SET "password" = '982c0381c279d139fd221fce974916e7'
WHERE "username" = 'admin';

-- Question 2: Erase any logs of the above password change recorded by the database

-- Code:
DELETE FROM "user_logs"
WHERE "old_password" IS NOT NULL;

-- Question 3: Add false data to throw others off your trail. In particular, to frame emily33, make it only appear—in the user_logs
--             table—as if the admin account has had its password changed to emily33’s password

-- Code: 
INSERT INTO "user_logs" ("type", "old_username", "new_username", "old_password", "new_password")
SELECT 'update','admin', 'admin','e10adc3949ba59abbe56e057f20f883e', '44bf025d27eea66336e5c1133c3827f7';
