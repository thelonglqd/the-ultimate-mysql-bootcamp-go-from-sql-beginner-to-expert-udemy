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