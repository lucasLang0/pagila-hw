/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */
SELECT
    f.title
FROM
    film f
JOIN
    film_category fc ON fc.film_id = f.film_id
JOIN
    category c ON fc.category_id = c.category_id
WHERE
    c.name = 'Family';
