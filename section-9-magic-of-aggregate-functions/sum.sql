-- Sum all pages in the entire database
SELECT SUM(pages) as 'total pages' FROM books;

-- Sum all pages of each author
SELECT
  author_fname,
  author_lname,
  SUM(pages) AS 'total pages'
FROM books
GROUP BY author_lname, author_fname;