-- SELECT author_lname FROM books ORDER BY author_lname;

-- SELECT title FROM books ORDER BY title;

-- SELECT title FROM books ORDER BY title DESC;

-- SELECT released_year FROM books ORDER BY released_year;

-- SELECT title, released_year, pages FROM books ORDER BY released_year;

-- SELECT title, author_fname, author_lname FROM books ORDER BY 2;

SELECT
  author_fname,
  author_lname
FROM books
ORDER BY author_lname, author_fname;