 -- The app’s user engagement team needs to identify active users.
 -- Find all usernames of users who have logged in since 2024-01-01.
 -- Ensure your query uses the search_users_by_last_login index

-- Create the index on the users table to improve efficiency of the process
-- CREATE INDEX "search_users_by_last_login"
-- ON "users"("last_login_date");

-- Explain the query plan and select the relevant rows/columns of the dataset
SELECT "username" FROM "users"
WHERE "last_login_date" >= '2024-01-01';
