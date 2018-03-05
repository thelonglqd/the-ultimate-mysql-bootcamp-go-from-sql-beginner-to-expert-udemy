SELECT title FROM books WHERE author_fname LIKE '%da%'; -- % is wildcard sign -> search for all book title with author_fname contains 'da'
SELECT title FROM books WHERE author_fname LIKE 'da%'; -- search for all books title with author_fname start with 'da'

SELECT title, stock_quantity FROM books WHERE stock_quantity LIKE '____';

SELECT title FROM books WHERE title LIKE '%\%%';
SELECT title FROM books WHERE title LIKE '%\_%';
