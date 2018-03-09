SELECT series.id, title, rating
FROM series
INNER JOIN reviews
ON series.id = reviews.series_id;