-- The app needs to rank a user’s “best friends,” similar to Snapchat’s “Friend Emojis” feature.
-- Find the user IDs of the top 3 users to whom creativewisdom377 sends messages most frequently.
-- Order the user IDs by the number of messages creativewisdom377 has sent to those users, most to least.
-- Ensure your query uses the search_messages_by_from_user_id index

-- Creating the index
-- CREATE INDEX "search_messages_by_from_user_id"
-- ON "messages"("from_user_id");

-- Find the user IDs of the top 3 users to whom creativewisdom377 sends messages most frequently
SELECT "to_user_id" FROM "messages"
JOIN "users" ON "messages"."from_user_id" = "users"."id"
WHERE "username" = 'creativewisdom377'
GROUP BY "to_user_id"
ORDER BY COUNT("to_user_id") DESC
LIMIT 3;

