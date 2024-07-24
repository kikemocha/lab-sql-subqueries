USE sakila;
SELECT count(*) as 'Hunchback_Impossible_count' FROM inventory 
WHERE film_id = (SELECT film_id FROM film WHERE title like('%Hunchback Impossible%'))
GROUP BY film_id;

SELECT title FROM film WHERE length > (SELECT AVG(length) AS media FROM film);

SELECT first_name, last_name FROM actor WHERE actor_id IN (SELECT actor_id FROM film_actor WHERe film_id = (SELECT film_id FROM film WHERE title = 'Alone Trip'))
