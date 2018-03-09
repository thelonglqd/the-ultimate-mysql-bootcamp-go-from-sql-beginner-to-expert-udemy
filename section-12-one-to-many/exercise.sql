USE student_papers;

DROP TABLE IF EXISTS papers, students;

CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(100)
);

CREATE TABLE papers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200),
  grade INT,
  student_id INT,
  FOREIGN KEY (student_id)
    REFERENCES students(id)
    ON DELETE CASCADE
);

INSERT INTO students (first_name)
VALUES ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade)
VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

SELECT * FROM students;
SELECT * FROM papers;

-- Print out all first_name, title, grade
-- Solution 1: Using INNER JOIN
SELECT first_name, title, grade
FROM students
INNER JOIN papers
ON students.id = papers.student_id
ORDER BY papers.grade DESC;
-- Solution 2: Using RIGHT JOIN
SELECT first_name, title, grade
FROM students
RIGHT JOIN papers
ON students.id = papers.student_id
ORDER BY papers.grade DESC;

-- Print out first_name, title, grade with all students
-- Solution 1: students LEFT JOIN papers
SELECT first_name, title, grade
FROM students
LEFT JOIN papers
ON students.id = papers.student_id;
-- Solution 2: papers RIGHT JOIN students
SELECT first_name, title, grade
FROM papers
RIGHT JOIN students
ON students.id = papers.student_id;

-- Print out the same above table with NULL title replaces with 'MISSING' NULL grade replaces with 0
-- Solution 1: students LEFT JOIN papers
SELECT 
  first_name,
  IFNULL(title, 'MISSING'),
  IFNULL(grade, 0)
FROM students
LEFT JOIN papers
ON students.id = papers.student_id;
-- Solution 2: papers RIGHT JOIN students
SELECT 
  first_name,
  IFNULL(title, 'MISSING'),
  IFNULL(grade, 0)
FROM papers
RIGHT JOIN students
ON students.id = papers.student_id;

-- Print out all students with his/her avarage grade
SELECT
  first_name,
  IFNULL(AVG(grade), 0) AS 'average'
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

-- Print out the same above table, add one more column 'passing_status', who has average grade is lesser than 75 is fail
SELECT
  first_name,
  IFNULL(AVG(grade), 0) AS 'average',
  CASE
    WHEN AVG(grade) IS NULL THEN 'FAILING'
    WHEN AVG(grade) >= 75 THEN 'PASSING'
    ELSE 'FAILING'
  END AS 'passing_status'
FROM students
LEFT JOIN papers
ON students.id = papers.student_id
GROUP BY students.first_name
ORDER BY average DESC;