SELECT 
  CONCAT
  (
    SUBSTRING(title, 1, 10),
    ' ...'
  ) AS 'display_title'
FROM books;