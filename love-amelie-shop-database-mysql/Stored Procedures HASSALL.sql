USE Designs;

These stored procedures do not work even though I have removed the safe update preference?!

SELECT * FROM Products;

DELIMITER //

CREATE PROCEDURE UpdateProductPrice(
	IN product_ID INT,
    IN new_price DECIMAL (10,2))
BEGIN
	UPDATE products
    SET price = new_price
    WHERE product_id = product_id;
    
END //

DELIMITER ;

CALL UpdateProductPrice (8, 11.99);


DELIMITER //

CREATE PROCEDURE InsertCustomer(
IN Customer_id INT,
IN First_Name VARCHAR(100),
IN Email VARCHAR(100))

BEGIN

INSERT INTO customers(customer_ID, First_Name, Email)
VALUES (customer_ID, First_Name, Email);

END//

DELIMITER ;

CALL InsertCustomer (12, 'George', '1997GeorgeDavis@gmail.com');

SELECT * FROM Customers;

DROP PROCEDURE InsertCustomer; 
