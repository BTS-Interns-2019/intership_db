DROP PROCEDURE rental_available;
DELIMITER //

CREATE PROCEDURE rental_available (
IN p_inventory_id INT,
IN p_customer_id INT,
IN p_staff_id INT
)
MODIFIES SQL DATA
BEGIN
DECLARE result INT;
DECLARE rentalId INT;
SET autocommit=0;
 
START TRANSACTION;
SAVEPOINT before_transaction;
INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id) 
VALUES(NOW(), p_inventory_id, p_customer_id, p_staff_id);
  
SELECT last_insert_id() INTO @rentalId FROM rental LIMIT 1;
INSERT INTO payment (customer_id, staff_id, rental_id, amount, payment_date)
VALUES (p_customer_id, p_staff_id, @rentalId, 7.98, NOW());
  
SELECT COUNT(*) INTO @result FROM rental WHERE return_date IS NULL AND inventory_id = p_inventory_id;
SELECT @result;

IF @result >=1 THEN
ROLLBACK TO before_transaction;
SELECT 'Unavailable movie';

ELSE
COMMIT;
SELECT 'Rented movie';
END IF;

SET autocommit=1;
END;//

CALL rental_available(2047, 3, 1);