-- Calculate the average released year across all books
SELECT AVG(released_year) FROM books;

-- Calculate the average of pages across all books
SELECT AVG(pages) FROM books;

-- Calculate the average stock quantity for books released in the same year
SELECT
  released_year,
  AVG(stock_quantity) as 'average in stock'
FROM books
GROUP BY released_year;

-- Calculate the average pages of author
SELECT
  author_fname,
  author_lname,
  AVG(pages)
FROM books
GROUP BY author_lname, author_fname;