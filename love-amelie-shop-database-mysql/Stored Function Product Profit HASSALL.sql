USE Designs;

DELIMITER //
CREATE FUNCTION Product_Profit(
    product_name VARCHAR(100)
) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE Profit DECIMAL(10,2);
    
    SELECT SUM(p.price - m.cost) INTO Profit
    FROM products AS p
    JOIN manufacture AS m ON
    p.product_name = m.product_name
    WHERE p.product_name = product_name;
   
    RETURN Profit;
END//
DELIMITER ; 

SELECT Product_Profit('Lotus_Leaf');
SELECT Product_Profit('Name_Puzzle');