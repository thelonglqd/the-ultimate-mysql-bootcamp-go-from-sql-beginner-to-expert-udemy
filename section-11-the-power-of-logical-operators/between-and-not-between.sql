-- SELECT all books between 2004 and 2015
-- Can not replace the 'AND' keyword by '&&', It's different !!!
SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015;

-- SELECT all books not between 2004 and 2015
-- Can not replace the 'AND' keyword by '&&', It's different !!!
SELECT title, released_year FROM books
WHERE released_year NOT BETWEEN 2004 AND 2015;

-- Using CAST()
SELECT CAST('2017-05-02' AS DATETIME);

USE new_testing_db;

SELECT * FROM people;

-- SELECT people with birthday(datetime) is between 2 date
SELECT name, birthdt FROM people
WHERE birthdt BETWEEN CAST('1980-01-01' AS DATETIME) AND CAST('2000-01-01' AS DATETIME);


