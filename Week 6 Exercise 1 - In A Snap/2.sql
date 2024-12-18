-- Users need to be prevented from re-opening a message that has expired. Find when the message with ID 151 expires.
-- You may use the message’s ID directly in your query.
-- Ensure your query uses the index automatically created on the primary key column of the messages table.

-- Create the index of the primary id column of the messages table ourselves
-- CREATE INDEX "primary_id_messages"
-- ON "messages" ("id");

-- Find when the message with ID 151 expires
SELECT "expires_timestamp" FROM "messages"
WHERE "id" = 151;
