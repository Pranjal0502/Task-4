SELECT payment_method, SUM(amount_paid) AS total_revenue
FROM payments
GROUP BY payment_method;

SELECT category_id, COUNT(*) AS product_count
FROM products
GROUP BY category_id;

SELECT product_id, SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id;

SELECT payment_method, SUM(amount_paid) AS total_paid
FROM payments
GROUP BY payment_method
HAVING total_paid > 1000;

SELECT category_id, AVG(price) AS avg_price, COUNT(*) AS product_count
FROM products
GROUP BY category_id
HAVING avg_price < 1000 AND product_count > 1;

SELECT product_id, SUM(quantity) AS total_quantity, SUM(price * quantity) AS total_revenue
FROM order_items
GROUP BY product_id
HAVING total_quantity > 1 AND total_revenue > 1000;






