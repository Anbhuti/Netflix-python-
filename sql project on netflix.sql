CREATE DATABASE netflix;
USE netflix;
CREATE TABLE netflix_titles (
    show_id VARCHAR(10),
    type VARCHAR(20),
    title VARCHAR(255),
    director VARCHAR(255),
    cast TEXT,
    country VARCHAR(255),
    date_added VARCHAR(50),
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(50),
    listed_in VARCHAR(255),
    description TEXT
);
-- Count total records
SELECT COUNT(*) FROM netflix_titles;

-- Find missing countries
SELECT * FROM netflix_titles WHERE country IS NULL OR country = '';

-- Replace missing country with 'Unknown'
UPDATE netflix_titles SET country = 'Unknown' WHERE country IS NULL OR country = '';

-- Q1. How many Movies vs TV Shows?
SELECT 
    type, 
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY type
ORDER BY total_titles DESC;

-- Q2. Number of titles released each year?
SELECT 
    release_year, 
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year DESC;


-- Q3. Top 10 Countries with Most Titles
SELECT 
    country, 
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- Q4. Most Common Genres (Categories)
SELECT 
    listed_in, 
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY listed_in
ORDER BY total_titles DESC
LIMIT 10;

-- Q5. Top 10 Directors with Most Titles
SELECT 
    director, 
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- Q6. Titles Added Recently (if you want date-based trend)
SELECT 
    SUBSTRING_INDEX(date_added, ',', -1) AS year_added,
    COUNT(*) AS total_titles
FROM netflix_titles
WHERE date_added IS NOT NULL
GROUP BY year_added
ORDER BY year_added DESC;

-- Q7. Titles by Rating Category
SELECT 
    rating, 
    COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY rating
ORDER BY total_titles DESC;

-- Q8. Top 10 Actors Appearing Most Frequently
SELECT 
    TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(cast, ',', n.n), ',', -1)) AS actor,
    COUNT(*) AS appearances
FROM netflix_titles
JOIN (
  SELECT a.N + b.N * 10 + 1 n
  FROM (SELECT 0 AS N UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 
        UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) a,
       (SELECT 0 AS N UNION ALL SELECT 1 UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 
        UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) b
) n ON n.n <= 1 + LENGTH(cast) - LENGTH(REPLACE(cast, ',', ''))
WHERE cast IS NOT NULL
GROUP BY actor
ORDER BY appearances DESC
LIMIT 10;

-- Q9. Top 10 Actors Appearing Most Frequently
SELECT 
    ROUND(AVG(CAST(REPLACE(duration, ' min', '') AS UNSIGNED)), 2) AS avg_movie_duration
FROM netflix_titles
WHERE type = 'Movie';

-- Q10. Average Number of Seasons for TV Shows
SELECT 
    ROUND(AVG(CAST(REPLACE(duration, ' Season', '') AS UNSIGNED)), 2) AS avg_seasons
FROM netflix_titles
WHERE type = 'TV Show';

-- Q11. Titles with Keyword “Love” or “Horror”
SELECT title, release_year, listed_in
FROM netflix_titles
WHERE title LIKE '%Love%' OR title LIKE '%Horror%';

