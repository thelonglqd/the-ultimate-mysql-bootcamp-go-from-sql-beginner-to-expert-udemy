USE book_shop;

-- SELECT books written by author with last name = 'Carver' || 'Lahiri' || 'Smith'
SELECT title, author_lname FROM books
WHERE author_lname = 'Carver' OR
      author_lname = 'Lahiri' OR
      author_lname = 'Smith';

-- Can use IN to do the same thing as above with better syntax
SELECT title, author_lname FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

-- SELECT all books that were not published in released_year not in
-- 2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014
SELECT title, released_year FROM books
WHERE released_year NOT IN (2000, 2002, 2004, 2006, 2008, 2010, 2012, 2014, 2016)
ORDER BY released_year;

-- SELECT all books that were not published in released_year is not even year
SELECT title, released_year FROM books
WHERE released_year >= 2000 AND released_year % 2 != 0
ORDER BY released_year;