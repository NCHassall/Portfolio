USE Designs;

  SELECT c.first_name, c.surname, c.email, COUNT(*) as Number_Orders
  FROM customers as c
  JOIN orders as o
  ON c.customer_ID = o.customer_ID
  GROUP BY first_name
  HAVING COUNT(c.first_name)>=3;
  
Sort the average rating in descending order of each product in a specified category.
This can help identify which products are the most popular and which ones may need improvements.

SELECT p.product_name, p.price, 
	(SELECT AVG(r.rating) 
    FROM reviews AS r 
    WHERE r.product_id = p.product_id)
    AS Average_Rating
FROM products AS p
WHERE p.category = 'wedding'
	ORDER BY average_rating DESC;

SELECT p.product_name, p.price, 
	(SELECT AVG(r.rating) 
    FROM reviews AS r 
    WHERE r.product_id = p.product_id)
    AS Average_Rating
FROM products AS p
WHERE p.category = 'birthday'
	ORDER BY average_rating DESC;
    
    SELECT p.product_name, p.price, 
	(SELECT AVG(r.rating) 
    FROM reviews AS r 
    WHERE r.product_id = p.product_id)
    AS Average_Rating
FROM products AS p
WHERE p.category = 'wall_decoration'
	ORDER BY average_rating DESC;
    
  Retrieve the top 5 most profitable products in terms of total revenue from orders:
  
  SELECT p.product_name, SUM(p.price - m.cost) 
  AS total_revenue, Product_Profit(p.product_name) 
  AS profit
  FROM products as p
  JOIN Manufacture as m ON p.product_name = m.product_name
  JOIN Orders as o ON p.product_ID = o.product_ID
  GROUP BY p.product_name
  ORDER BY profit DESC
  LIMIT 5;
  
