SELECT COUNT(*) FROM books; -- count all records

SELECT COUNT(DISTINCT author_fname) FROM books; -- count all distince author_fname

SELECT COUNT(DISTINCT author_fname, author_lname) FROM books; -- count all author

SELECT COUNT(*) AS 'total title contains "the"' FROM books WHERE title LIKE '%the%';