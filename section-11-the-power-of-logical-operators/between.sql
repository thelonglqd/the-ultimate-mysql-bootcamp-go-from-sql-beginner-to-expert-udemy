-- SELECT all books between 2004 and 2015
-- Can not replace the 'AND' keyword by '&&', It's different !!!
SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015;