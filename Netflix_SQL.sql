--What are the top 10 countries with the most titles produced, and how many titles do they have?

SELECT production_countries, COUNT(*) AS title_count
FROM titles
GROUP BY production_countries
ORDER BY title_count DESC
LIMIT 10;

--What are top 10 movies according to IMDB score?

SELECT title, 
type, 
imdb_score
FROM titles
WHERE imdb_score >= 7.4
AND type = 'MOVIE'
ORDER BY imdb_score DESC
LIMIT 10

--What is the average IMDb score for each genre?

SELECT genres, AVG(imdb_score) AS average_imdb_score
FROM titles
GROUP BY genres
ORDER BY average_imdb_score DESC;

--What are the titles released after a specific year 2000?

SELECT title, release_year
FROM titles
WHERE release_year > 2000
ORDER BY release_year;


--What are titles with the highest TMDB popularity?

SELECT title, tmdb_popularity
FROM titles
ORDER BY tmdb_popularity DESC
LIMIT 5;

--What are the titles and their respective IMDB scores that have a score higher than the average score across all titles?
 
WITH avg_score AS (
    SELECT AVG(imdb_score) AS average_imdb_score
    FROM titles
)
SELECT title, imdb_score
FROM titles
WHERE imdb_score > (SELECT average_imdb_score FROM avg_score);

--What is the average runtime of titles by age certification and genre?

SELECT age_certification, genres, AVG(runtime) AS average_runtime
FROM titles
WHERE runtime IS NOT NULL
GROUP BY age_certification, genres
ORDER BY age_certification, average_runtime DESC;

--Which age certification has the highest average runtime?

SELECT age_certification, AVG(runtime) AS average_runtime
FROM titles
WHERE runtime IS NOT NULL
GROUP BY age_certification
ORDER BY average_runtime DESC
LIMIT 1;


--What is the maximum, minimum, and average runtime of titles released each year?

SELECT release_year, 
   MAX(runtime) AS max_runtime, 
   MIN(runtime) AS min_runtime, 
   AVG(runtime) AS average_runtime
FROM titles
WHERE runtime IS NOT NULL
GROUP BY release_year
ORDER BY release_year;

--Calculate the total number of titles released each year, alongside the average IMDb score for those years.

SELECT release_year, COUNT(*) AS title_count, AVG(imdb_score) AS average_imdb_score
FROM titles
GROUP BY release_year
ORDER BY release_year;