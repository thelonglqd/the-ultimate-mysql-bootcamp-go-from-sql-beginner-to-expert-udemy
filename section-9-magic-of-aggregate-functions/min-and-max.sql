SELECT MIN(released_year) FROM books;

-- This query will return the maximum pages but, the title is the first one of SELECT * FROM books;
-- The title here is not the title of the book has maximum pages
SELECT title, MAX(pages) as pages FROM books;

-- Solution for above query - find the maximum pages and the tile of it
---- use sub query -> This solution will be slow, it has to run 2 queries
SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);
---- use ORDER BY instead will has better performance
SELECT title, pages FROM books
ORDER BY pages DESC LIMIT 1;

