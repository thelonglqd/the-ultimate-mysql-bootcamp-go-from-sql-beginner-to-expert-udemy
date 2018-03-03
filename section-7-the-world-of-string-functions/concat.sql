SELECT
  CONCAT(author_fname, ' ', author_lname) AS 'Fullname'
FROM books;

SELECT 
  author_fname AS 'first', author_lname AS 'last',
  CONCAT(author_fname, ' ', author_lname) AS 'full'
FROM books;

SELECT
  CONCAT_WS('-', author_fname, author_lname) AS 'full name'
FROM books;
