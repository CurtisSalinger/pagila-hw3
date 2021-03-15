/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 */

SELECT film.title FROM film WHERE rating = 'G' AND special_features @> ARRAY['Trailers'] ORDER BY film.title DESC;
