/*
 * List all actors with Bacall Number 2;
 * That is, list all actors that have appeared in a film with an actor that has appeared in a film with 'RUSSEL BACALL',
 * but do not include actors that have Bacall Number < 2.
 */

SELECT actor.first_name || ' ' || actor.last_name AS "Actor Name" FROM (
	SELECT DISTINCT(actor_id) FROM film_actor WHERE film_id IN (
		SELECT DISTINCT film_id FROM film_actor WHERE actor_id IN (
			SELECT DISTINCT actor_id FROM film_actor WHERE film_id IN (
				SELECT film_id FROM film_actor WHERE actor_id = 112)
			AND actor_id != 112))
			) AS movies
INNER JOIN actor USING (actor_id)
WHERE actor_id NOT IN (
	SELECT DISTINCT(actor_id) FROM film_actor WHERE film_id IN (
		SELECT film_id FROM film_actor WHERE actor_id = 112
	))
ORDER BY actor.first_name || ' ' || actor.last_name;
