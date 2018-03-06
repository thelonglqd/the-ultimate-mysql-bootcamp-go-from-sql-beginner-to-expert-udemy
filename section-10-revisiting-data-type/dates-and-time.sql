-- DATE
USE new_testing_db;

DROP TABLE IF EXISTS people;

CREATE TABLE people(
  name VARCHAR(100),
  birthdate DATE,
  birthtime TIME,
  birthdt DATETIME
);

INSERT INTO people 
  (name, birthdate, birthtime, birthdt)
VALUES
  ('Padma', '1983-11-11', '10:07:35', '1983-11-11 10:07:35');

INSERT INTO people
  (name, birthdate, birthtime, birthdt)
VALUES
  ('Larry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

INSERT INTO people
  (name, birthdate, birthtime, birthdt)
VALUES
  ('Microwave', CURDATE(), CURTIME(), NOW());

SELECT * FROM people;

SELECT name, birthdate, DAY(birthdate) FROM people;
SELECT name, birthdate, DAYNAME(birthdate) FROM people;
SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;
SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;

SELECT name, birthdt, MONTHNAME(birthdt) FROM people;

SELECT DATE_FORMAT('2009-10-04 22:23:00', '%W%M%Y');
SELECT DATE_FORMAT(birthdt, 'was born on a %W') FROM people;
SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;

-- How many days ago when peopel were born
SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

SELECT birthdt, DATE_ADD(birthdt, INTERVAL 1 MONTH) FROM people;
SELECT birthdt, birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR FROM people;