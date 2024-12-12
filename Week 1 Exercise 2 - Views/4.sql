SELECT COUNT(*) AS "number_of_eastern_capital"
FROM "views"
WHERE ("artist" = 'Hiroshige') AND ("english_title" LIKE '%Eastern Capital%');
