-- Challenge 1: Find 5 olders users (to send them a coupon or something like that)
SELECT username, created_at FROM users
ORDER BY created_at
LIMIT 5;

-- Challenge 2: What day of the week do most users register on
SELECT registration_day, registration_times FROM (
  SELECT
    DAYNAME(created_at) AS 'registration_day',
    COUNT(*) AS 'registration_times'
  FROM users
  GROUP BY registration_day
) AS registration_summary1
WHERE registration_times = (
    SELECT MAX(registration_times) FROM (
    SELECT
      DAYNAME(created_at) AS 'registration_day',
      COUNT(*) AS 'registration_times'
    FROM users
    GROUP BY registration_day
  ) AS registration_summary2
);

-- Challenge 3: Find all users have never posted a photo
SELECT username, image_url
FROM users
LEFT JOIN photos
  ON users.id = photos.user_id
WHERE photos.image_url IS NULL;

-- Challenge 4: Who get the most likes on a single photo
SELECT
  username,
  likes.photo_id,
  COUNT(likes.photo_id) AS 'total_likes'
FROM photos
JOIN users
  ON photos.user_id = users.id 
JOIN likes
  ON photos.id = likes.photo_id
GROUP BY likes.photo_id
ORDER BY total_likes DESC
LIMIT 1;

-- Challenge 5: How many times does the average user post
-- Solution 1:
SELECT AVG(SQResult.post_count) FROM (
  SELECT
  username,
  COUNT(photos.id) AS 'post_count'
  FROM users
  LEFT JOIN photos
    ON users.id = photos.user_id
  GROUP BY users.username
) AS SQResult;
-- Solution 2:
SELECT (SELECT COUNT(*) FROM photos) / (SELECT COUNT(*) FROM users) AS 'AVG';

-- Challenge 6: Which is the most commonly hashtags
SELECT
  tag_name,
  COUNT(tags.id) AS total
FROM tags
JOIN photo_tags
  ON tags.id = photo_tags.tag_id
GROUP BY tags.id
ORDER BY total DESC
LIMIT 5;

-- Challenge 7: Find users who have liked every single photo on the site
SELECT
  username,
  COUNT(users.id) AS like_times
FROM users
JOIN likes
  ON users.id = likes.user_id
GROUP BY users.id
HAVING like_times = (SELECT COUNT(*) FROM photos);
