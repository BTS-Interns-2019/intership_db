CREATE DEFINER=`root`@`localhost` PROCEDURE `Rental`(IN inventory_id INT, IN customer_id INT, IN staff_id INT)
BEGIN
DECLARE id INT;
DECLARE result INT;
SET AUTOCOMMIT = 0;
START TRANSACTION;
SAVEPOINT validate_rental;
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id, last_update) VALUES
(NOW(), inventory_id, customer_id, staff_id, NOW());
SELECT LAST_INSERT_ID() INTO @id FROM rental LIMIT 1;
INSERT INTO payment (customer_id, staff_id, rental_id, amount, payment_date, last_update) VALUES 
(customer_id, staff_id, @id, 3.99, NOW(), NOW());
SELECT COUNT(*) INTO @result FROM rental WHERE rental.return_date IS NULL AND rental.inventory_id = inventory_id;
IF @result > 1 THEN
ROLLBACK TO validate_rental;
SELECT 'Something was wrong, the movie is already rented' AS Response;
ELSE 
COMMIT;
SELECT 'Everything is OK' AS Response;
END IF;
SET AUTOCOMMIT = 1;
END