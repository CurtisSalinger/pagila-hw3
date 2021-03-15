/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT bts.title FROM film bts
JOIN (SELECT * FROM film trls) AS trls
ON bts.title = trls.title
WHERE bts.special_features@>ARRAY['Behind the Scenes'] AND trls.special_features@>ARRAY['Trailers']
ORDER BY bts.title;
