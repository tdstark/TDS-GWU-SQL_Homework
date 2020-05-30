CREATE VIEW alter_victory AS
SELECT film_actor.*
	, (SELECT title
	  	FROM film
	  	WHERE film.film_id = film_actor.film_id)
	, (SELECT first_name
	  	FROM actor
	  	WHERE actor.actor_id = film_actor.actor_id)
	, (SELECT last_name
	  	FROM actor
	  	WHERE actor.actor_id = film_actor.actor_id) 
FROM film_actor;

SELECT first_name, last_name
FROM alter_victory
WHERE title = 'ALTER VICTORY';


