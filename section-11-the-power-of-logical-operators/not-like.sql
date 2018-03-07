USE book_shop;

-- SELECT all books start with W
SELECT title FROM books
WHERE title LIKE 'W%';

-- SELECT all books do not start with W
SELECT title FROM books
WHERE title NOT LIKE 'W%';