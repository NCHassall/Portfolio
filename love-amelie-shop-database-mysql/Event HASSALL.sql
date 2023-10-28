SET GLOBAL event_scheduler = ON;
USE Designs;

CREATE TABLE monitoring_stock
(ID INT NOT NULL AUTO_INCREMENT, 
Last_Update TIMESTAMP,
PRIMARY KEY (ID));

DELIMITER //

CREATE EVENT check_low_stock
ON SCHEDULE EVERY 24 HOUR
STARTS Now()
DO BEGIN
	INSERT INTO monitoring_stock(Last_Update)
    VALUES (Now());
	UPDATE products
    SET is_low_stock = 1
    WHERE quantity_in_stock <= 2;

END //

DELIMITER ;

SHOW Events;

Drop EVENT check_low_stock;

SELECT * From monitoring_stock;

SELECT * FROM products;
