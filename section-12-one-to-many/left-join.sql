SELECT first_name, last_name, order_date, amount
FROM customers
JOIN orders
ON customers.id = orders.customer_id
ORDER BY amount;

-- Group by customers and count the total spent amount they spent, then order it
SELECT first_name, last_name, order_date, amount, SUM(amount) AS 'total_spent'
FROM customers
JOIN orders
ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY 'total_spent' DESC;

-- LEFT JOIN
-- SELECT first_name, last_name, order_date, amount LEFT JOIN
SELECT first_name, last_name, order_date, amount 
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;

SELECT 
  first_name,
  last_name,
  IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent DESC;
