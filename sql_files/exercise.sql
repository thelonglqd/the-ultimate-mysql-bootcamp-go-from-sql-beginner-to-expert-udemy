-- Reverse and upper case the following sentence "Why does my cat look at me with such harted"
SELECT 
  UPPER(REVERSE('Why does my cat look at me with such harted'));

-- What does this print out - result: "I-love-cats"
SELECT
  REPLACE
  (
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '-'
  );

-- Replace spaces with -> in all books title
SELECT
  REPLACE(title, ' ', '->')
FROM books;

-- Print out the author last name in column named forwards and his/her reversed name in column named bacwards
SELECT
  author_lname AS forwards,
  REVERSE(author_lname) AS backwards
FROM books;

-- Print out all authors full name in caps
SELECT
  UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps'
FROM books;

-- Print sentence <title> was released in <released_year>
SELECT
  CONCAT(title, ' was released in ', released_year) AS 'blurb'
FROM books;

-- Print title as column named title and the character length of this tile in a column named character count
SELECT
  title,
  CHAR_LENGTH(title) AS 'character count'
FROM books;

-- Print out
  -- short title column with first ten character of title, the rest replace with ...
  -- author column with last name, first name structure
  -- quantity column with <stock_quantity> in stock
SELECT 
  CONCAT(SUBSTRING(title, 1, 10), ' ', '...') AS 'short title',
  CONCAT(author_lname, ', ', author_fname) AS 'author',
  CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;

