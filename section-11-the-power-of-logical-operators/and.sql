-- SELECT all books by Dave Eggers and released_year after 2010
SELECT  
  author_lname, released_year 
FROM books
WHERE 
  author_lname = 'Eggers' && released_year > 2010;