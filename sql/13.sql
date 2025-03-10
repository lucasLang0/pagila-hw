/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */
SELECT f.film_id, f.title, language.language_id, language.name
FROM film f
JOIN language ON f.language_id = language.language_id
WHERE language.name = 'English' AND (f.title LIKE 'K%' OR f.title LIKE 'Q%')
ORDER BY f.title ASC;
