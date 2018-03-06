DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS tweets;

/*
Fill in the blank
CREATE TABLE inventory (
  item_name ____________,
  price ________________,
  quantity _____________
);

NOTE: price is always < 1,000,000
*/

CREATE TABLE inventory (
  item_name VARCHAR(100),
  price DECIMAL(8, 2),
  quantity INT
);

/*
1. Print out the current time
2. Print out the current date
3. Print out the current day of the week - the number
4. Print out the current day of the week - the day name
5. Print out the current day and time using this format: mm/dd/yyy
6. Print out the current day and time using this format: January 2nd at 3:15
*/
-- 1
SELECT CURTIME();
-- 2 
SELECT CURDATE();
-- 3
SELECT DAYOFWEEK(NOW());
-- 4
SELECT DAYNAME(NOW());
-- 5
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');
-- 6
SELECT DATE_FORMAT(NOW(), '%M %D at %H:%i');

/*
Create a tweets table that stores:
  - The Tweet content
  - A Username
  - Time it was created
*/
CREATE TABLE tweets (
  content VARCHAR(200),
  username VARCHAR(50),
  created_at TIMESTAMP DEFAULT NOW()
);


