SELECT
  REPLACE(title, 'e', '3') AS 'teen code title'
FROM books;

SELECT
  REPLACE(SUBSTRING(title, 1, 10), 'e', '3')
FROM books;