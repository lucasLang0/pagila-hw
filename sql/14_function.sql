/*
 * Use a JOIN to count the number films in the specified category.
 * Use table category, film_category, and film.
 */

CREATE OR REPLACE FUNCTION list_category(TEXT) RETURNS TABLE(title TEXT) AS
$$
SELECT film.title
FROM film
JOIN film_category ON 
	film_category.film_id = film.film_id
JOIN category ON 
	film_category.category_id = category.category_id
WHERE category.name = $1
ORDER BY film.title ASC; -- no clue why it wasn't working with my code for 14 but it worked when I got rid of all shorthand for some reason
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT list_category('Action');
SELECT list_category('Animation');
SELECT list_category('Children');
SELECT list_category('Classics');
SELECT list_category('Comedy');
SELECT list_category('Documentary');
SELECT list_category('Drama');
SELECT list_category('Family');
SELECT list_category('Foreign');
SELECT list_category('Games');
SELECT list_category('Horror');
SELECT list_category('Music');
SELECT list_category('New');
SELECT list_category('Sci-Fi');
SELECT list_category('Sports');
SELECT list_category('Travel');
