/*
 * Management is planning on purchasing new inventory.
 * Films with special features cost more to purchase than films without special features,
 * and so management wants to know if the addition of special features impacts revenue from movies.
 *
 * Write a query that for each special_feature, calculates the total profit of all movies rented with that special feature.
 *
 * HINT:
 * Start with the query you created in pagila-hw1 problem 16, but add the special_features column to the output.
 * Use this query as a subquery in a select statement similar to answer to the previous problem.
 */

 SELECT unnest(film.special_features) AS special_feature, SUM(payment.amount) as profit FROM film JOIN inventory on film.film_id = inventory.film_id JOIN rental ON inventory.inventory_id = rental.inventory_id JOIN payment ON rental.rental_id = payment.rental_id GROUP BY unnest(film.special_features) ORDER BY unnest(film.special_features);

