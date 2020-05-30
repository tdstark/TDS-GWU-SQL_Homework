CREATE VIEW title_count AS
SELECT film.title 
, (SELECT COUNT(inventory.film_id)
   FROM inventory 
   WHERE inventory.film_id = film.film_id) AS "Number of Copies"
FROM film
ORDER BY title DESC;

SELECT * 
FROM title_count
WHERE "Number of Copies" = 7
ORDER BY title;