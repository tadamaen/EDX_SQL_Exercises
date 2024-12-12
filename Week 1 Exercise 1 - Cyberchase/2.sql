SELECT "season", "title" FROM "episodes"
GROUP BY "season"
HAVING MIN("air_date");
