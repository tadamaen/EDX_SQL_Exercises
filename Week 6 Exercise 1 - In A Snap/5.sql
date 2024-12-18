-- For any two users, the app needs to quickly show a list of the friends they have in common.
-- Given two usernames, lovelytrust487 and exceptionalinspiration482, find the user IDs of their mutual friends.
-- A mutual friend is a user that both lovelytrust487 and exceptionalinspiration482 count among their friends.

-- Ensure your query uses the index automatically created on primary key columns of the friends table.
-- This index is called sqlite_autoindex_friends_1

-- Create the index of the primary key columns of the friends table ourselves
-- CREATE INDEX "sqlite_autoindex_friends_1"
-- ON "friends"("user_id", "friend_id");

-- Find the user IDs of the mutual friends of lovelytrust487 and exceptionalinspiration482
SELECT "friend_id" FROM "friends"
JOIN "users" ON "friends"."user_id" = "users"."id"
WHERE "username" = 'lovelytrust487'
INTERSECT
SELECT "friend_id" FROM "friends"
JOIN "users" ON "friends"."user_id" = "users"."id"
WHERE "username" = 'exceptionalinspiration482'
