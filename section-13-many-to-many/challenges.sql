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

-- Challenge 6
SELECT
  reviewers.id,
  first_name,
  last_name,
  COUNT(rating) AS COUNT,
  IFNULL(MIN(rating), 0) AS MIN,
  IFNULL(MAX(rating), 0) AS MAX,
  ROUND(IFNULL(AVG(rating), 0), 2) AS AVG,
  IF(COUNT(rating) >= 1, 'ACTIVE', 'INACTIVE') AS STATUS
FROM reviewers
LEFT JOIN reviews
  ON reviewers.id = reviews.reviewer_id
GROUP BY reviewers.id;

-- Challenge 7 JOIN all tables
SELECT
  title,
  rating,
  CONCAT(first_name, ' ', last_name) AS reviewer
FROM reviewers
INNER JOIN reviews
  ON reviewers.id = reviews.reviewer_id
INNER JOIN series
  ON series.id = reviews.series_id;


