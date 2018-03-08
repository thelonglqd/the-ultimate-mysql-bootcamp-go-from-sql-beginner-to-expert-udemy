-- SELECT all orders that have been placed by Boy George
-- Solution 1: With subquery
SELECT * FROM orders
WHERE 
customer_id = (
    SELECT id FROM customers
    WHERE last_name = 'George'
  );

-- Solution 2: with Implicit INNER JOIN
SELECT first_name, last_name, order_date, amount
FROM customers, orders
WHERE customers.id = orders.customer_id;

-- Solution 3: with Explicit INNER JOIN
SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id

-- Solution 4: with Explicit INNER JOIN but with reversed order
-- With that kind of JOIN, the order does not change anything about the data
-- Just the order of columns if they were not specified explicitly, the data is the same
SELECT first_name, last_name, order_date, amount
FROM orders
JOIN customers
ON customers.id = orders.customer_id

-- ARBITRARY JOIN - meaningless, but still possible
-- The JOIN condition can be anything, but most of them is meaningless
SELECT * FROM customers
JOIN orders ON customers.id = orders.id;