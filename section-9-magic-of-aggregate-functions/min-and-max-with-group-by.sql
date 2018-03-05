-- Find the year each author published their first book
SELECT
  author_lname,
  author_fname,
  title,
  MIN(released_year) AS 'first publish'
FROM books
GROUP BY author_lname, author_fname;

-- Find the longest books for each author
SELECT
  CONCAT(
    author_fname,
    ' ',
    author_lname
  ) AS author,
  MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname, author_fname;