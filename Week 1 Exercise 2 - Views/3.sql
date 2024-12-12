SELECT COUNT(*) AS "number_of_fuji"
FROM "views"
WHERE ("artist" = 'Hokusai') AND ("english_title" LIKE '%Fuji%');
