-- This query will returns table contains author_lname, author_fname and the total books of that author
-- But, cause of group by author_lname, so Dan Harris and Freida Harris will count as 'Harris'
-- So, We will have one record called Harris, which has 2 books
SELECT
  author_lname, author_fname, COUNT(*)
FROM books
GROUP BY author_lname;

-- To classify 2 authors with the same last name, we need to group by the first name also
SELECT
  author_lname, author_fname, COUNT(*)
FROM books
GROUP BY author_lname, author_fname;

-- The case that 2 authors has exactly the same name in both last name and first name ???

-- group by released_year
SELECT
  released_year, COUNT(*)
FROM books
GROUP BY released_year;


