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

