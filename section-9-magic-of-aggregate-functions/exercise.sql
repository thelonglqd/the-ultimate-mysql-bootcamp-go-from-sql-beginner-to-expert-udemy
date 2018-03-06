-- Print the number of books in the stock
SELECT COUNT(*) FROM books;

-- Print out how many books were released in each year
SELECT
  released_year,
  COUNT(*) AS 'released books'
FROM books
GROUP BY released_year;

-- Print out the total number of books in stock
SELECT SUM(stock_quantity) FROM books;

-- Find the average released year for each author
SELECT
  author_fname,
  author_lname,
  AVG(released_year)
FROM books
GROUP BY author_lname, author_fname;

-- Find the full name of the author who wrote the longest book
---- use ORDER BY
SELECT CONCAT(
  author_fname,
  ' ',
  author_lname
) AS 'full name' 
FROM books ORDER BY pages DESC LIMIT 1;
---- use sub query
SELECT CONCAT(
  author_fname,
  ' ',
  author_lname
) AS 'full name'
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

-- Print out year, number of books released and avg pages
SELECT
  released_year AS year,
  COUNT(*) AS '# books',
  AVG(pages) AS 'avg pages'
FROM books
GROUP BY released_year;