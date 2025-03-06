/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
SELECT
  f.title AS title, f.film_id,
  COUNT(fa.actor_id) AS actor_count  
FROM
  film f
  LEFT JOIN film_actor fa ON f.film_id = fa.film_id
GROUP BY
  f.film_id, f.title
HAVING 
  COUNT(fa.actor_id) > 0
ORDER BY 
  actor_count ASC, title ASC;
