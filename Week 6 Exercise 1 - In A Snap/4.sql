-- The app needs to send users a summary of their engagement. Find the username of the most popular user,
-- defined as the user who has had the most messages sent to them.
-- Ensure your query uses the search_messages_by_to_user_id index

-- Creating the index
-- CREATE INDEX "search_messages_by_to_user_id"
-- ON "messages"("to_user_id");

-- Find the username of the most popular user
SELECT "username" FROM "users"
JOIN "messages" ON "users"."id" = "messages"."to_user_id"
GROUP BY "to_user_id"
ORDER BY COUNT("to_user_id") DESC
LIMIT 1;
