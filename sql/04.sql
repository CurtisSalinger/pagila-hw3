/*
 * List the name of all actors who have appeared in a movie that has the 'Behind the Scenes' special_feature
 */
 

SELECT DISTINCT(actor.first_name) || ' ' || actor.last_name AS "Actor Name" FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film on film_actor.film_id = film.film_id
WHERE special_features@>ARRAY['Behind the Scenes'] ORDER BY actor.first_name || ' ' || actor.last_name;
