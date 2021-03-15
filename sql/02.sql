/*
 * Count the number of movies that contain each type of special feature.
 */

 SELECT DISTINCT(unnest(film.special_features)) AS special_features, count(film.title) FROM film GROUP BY unnest(special_features) ORDER BY unnest(special_features);
