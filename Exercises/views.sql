-- View -
SELECT * FROM inventory; 
Drop View if exists title_count;

--Create View
CREATE VIEW title_count AS

SELECT 
	title, COUNT(i.film_id) AS number_of_films 
	
--Create a join
FROM
	film f INNER JOIN inventory i
		ON f.film_id = i.film_id
			GROUP BY title;

--Run a query from the newly constructed view
SELECT
	title, number_of_films
FROM
	title_count
WHERE
	number_of_films = 4;