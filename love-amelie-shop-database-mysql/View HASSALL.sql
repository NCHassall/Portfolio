USE Designs;

CREATE VIEW shop_analysis AS
SELECT
p.product_ID,
p.product_name,
p.category,
COUNT(o.order_ID) AS total_orders,
COUNT(DISTINCT o.customer_ID) AS unique_customers,
SUM(py.amount) AS total_sales_amount,
AVG(r.rating) AS average_rating
FROM
products AS p
JOIN
Orders AS o ON p.product_ID = o.product_ID
JOIN
Customers AS c ON o.customer_ID = c.customer_ID
JOIN
Transactions AS t ON t.order_ID = o.order_ID
JOIN
Payments AS py ON py.payment_ID = t.payment_ID
LEFT JOIN 
Reviews AS r ON p.product_ID = r.product_ID
GROUP BY 
p.product_ID
ORDER BY
total_sales_amount DESC;

SELECT * FROM Shop_analysis;

DROP VIEW Shop_analysis;
