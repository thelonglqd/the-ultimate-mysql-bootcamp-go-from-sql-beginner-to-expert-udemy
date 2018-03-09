-- Challenge 1
SELECT series.id, title, rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id;

-- Challenge 2
SELECT
  series.id,
  title,
  AVG(rating) AS avg_rating
FROM series
INNER JOIN reviews
  ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

-- Challenge 3
SELECT
  first_name,
  last_name,
  rating
FROM reviewers JOIN reviews
  ON reviewers.id = reviews.reviewer_id;

-- Challenge 4
SELECT
  title AS 'unreviewed_series'
FROM series
LEFT JOIN reviews
  ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Challenge 5
SELECT
  genre,
  ROUND(AVG(rating), 2) AS avg_rating
FROM series 
INNER JOIN reviews
  ON series.id = reviews.series_id
GROUP BY genre;