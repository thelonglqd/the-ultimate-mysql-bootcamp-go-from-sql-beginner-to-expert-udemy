-- SELECT title and released_year and additional column called genre
-- If the released_year of the book is >= 2000 -> genere is Modern lit
-- If the released_year of the books is < 2000 -> genre is 20th century lit
-- Syntax of CASE statement is WHEN <condition> THEN <value_when_true> ELSE <value_when_false>
-- It is like the ternary operator in programming <condition> : <value_when_true> ? <value_when_false>
SELECT title, released_year,
  CASE
    WHEN released_year >= 2000 THEN 'Modern Lit'
    ELSE '20th Century Lit'
  END AS genre
FROM books;

-- Represemt the stock quantity as follow
-- 0 <= stock <= 50 -> * (one star)
-- 51 <= stock <= 100 -> ** (two stars)
-- 101 <= stock -> *** (three stars)
SELECT title, stock_quantity,
CASE
    WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
    WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
    ELSE '***'
  END AS 'STOCK'
FROM books;
