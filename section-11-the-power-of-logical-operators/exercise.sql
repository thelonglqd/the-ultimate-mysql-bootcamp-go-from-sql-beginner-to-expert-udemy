USE book_shop;

-- Evaluate some statements below
  -- SELECT 10 != 10 => 0
  -- SELECT 15 > 14 && 99 - 5 <= 94 => 1
  -- SELECT 1 IN (5, 3) || 9 BETWEEN 8 AND 10 => 1

SELECT 10 != 10;
SELECT 15 > 14 && 99 - 5 <= 94;
SELECT 1 IN (5, 3) || 9 BETWEEN 8 AND 10;

-- SELECT all books written before 1980 (non inclusive)
SELECT title, released_year FROM books
WHERE released_year < 1980;

-- SELECT all books written by Eggers or Chabon
SELECT title, author_lname FROM books
WHERE author_lname IN ('Eggers', 'Chabon');

-- SELECT all books written by Lahiri published after 2000
SELECT title, released_year, author_lname FROM books
WHERE author_lname = 'Lahiri' AND released_year > 2000;

-- SELECT all books with page counts between 100 and 200
SELECT title, pages FROM books
WHERE pages BETWEEN 100 AND 200;

-- SELECT all books where author_lname starts with a 'C' or a 'S'
-- Solution 1:
SELECT title, author_lname FROM books
WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

-- Solution 2:
SELECT title, author_lname FROM books
WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');


-- If title contains 'stories' -> short stories
-- title is 'Just kids' and 'A heart breaking work' -> memoir
-- everything else -> novel
SELECT title, author_lname,
  CASE
    WHEN title IN ('just kids', 'a heartbreaking work of staggering genius') THEN 'Memoir'
    WHEN title LIKE '%stories%' THEN 'Short Stories'
    ELSE 'Novel'
  END AS 'TYPE'
FROM books;

-- Print out title, author_lname and COUNT, COUNT is a column with number of books written by author, book with singular and books with plural
SELECT title, author_lname,
  CASE
    WHEN COUNT(*) = 1 THEN CONCAT(COUNT(*), ' book')
    ELSE CONCAT(COUNT(*), ' books')
  END AS 'COUNT'
FROM books
GROUP BY author_lname, author_fname;