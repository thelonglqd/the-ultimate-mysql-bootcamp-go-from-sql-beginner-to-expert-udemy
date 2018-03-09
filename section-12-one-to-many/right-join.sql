-- RIGHT JOIN

SELECT * FROM customers;
SELECT * FROM orders;

SELECT * FROM customers
RIGHT JOIN orders
ON customers.id = orders.customer_id;

-- DELETE recored in all its dependencies records 'ON DELETE CASCADE'

