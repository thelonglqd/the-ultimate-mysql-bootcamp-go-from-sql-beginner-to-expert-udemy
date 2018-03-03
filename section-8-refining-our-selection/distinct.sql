USE book_shop;

SELECT author_lname FROM books;
SELECT DISTINCT author_lname FROM books;

SELECT released_year FROM books;
SELECT DISTINCT released_year FROM books;

SELECT author_fname, author_lname FROM books;
SELECT DISTINCT CONCAT(author_fname, ' ', author_lname) FROM books;
SELECT DISTINCT author_fname, author_lname FROM books;