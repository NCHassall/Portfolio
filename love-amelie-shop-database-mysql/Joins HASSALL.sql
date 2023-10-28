USE Designs;


Names of products that have been ordered:

SELECT
t1.order_ID AS Order_ID,
t1.product_ID AS Product_ID,
t2.product_ID AS Product_ID,
t2.product_name AS Product_Name
FROM orders as T1
INNER JOIN
products as T2 
ON
t1.product_ID = t2.product_ID;


Customers who have not left a review:

SELECT
t1.rating AS Star_Rating,
t1.customer_ID AS Customer_ID,
t2.customer_ID AS Customer_ID,
t2.first_name AS Name,
t2.email AS Email
FROM reviews as T1
RIGHT JOIN
customers as T2
ON
t1.customer_ID = t2.customer_ID;

Which products have recieved a review:

SELECT
t1.Product_Name AS Product_Name,
t1.Product_ID AS Product_ID,
t2.Product_ID AS Product_ID,
t2.Review_ID AS Review,
t2.Rating AS Star_Rating
FROM products as T1
LEFT JOIN
reviews as T2
ON 
t1.product_id = t2.product_id;






