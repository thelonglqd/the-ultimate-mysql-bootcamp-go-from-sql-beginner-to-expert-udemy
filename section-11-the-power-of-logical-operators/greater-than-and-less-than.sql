USE book_shop;

-- SELECT all books has released_year after 2000
SELECT title, released_year FROM books
WHERE released_year > 2000
ORDER BY released_year;

-- SELECT all books has stock_quantity equal to or greater than 100
SELECT title, stock_quantity FROM books
WHERE stock_quantity > 100
ORDER BY stock_quantity;

-- SELECT 99 > 1 --> returns TRUE in form of number 1
SELECT 99 > 1;

-- SELECT 'A' > 'a', returns 0, because 'A' = 'a', case insensitive
SELECT 'A' > 'a';
SELECT 'A' >= 'a';
SELECT 'A' = 'a';

-- SELECT 'b' > 'a';
SELECT 'b' > 'a';

-- SELECT all books has released_year before 2000
SELECT title, released_year FROM books
WHERE released_year < 2000
ORDER BY released_year;