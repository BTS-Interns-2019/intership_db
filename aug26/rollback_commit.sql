CREATE DEFINER=`root`@`localhost` PROCEDURE `validateRent`(IN inventoryId INT, IN customerId INT, IN staffId INT)
BEGIN 
DECLARE lastId INT;
DECLARE result INT;
SET  AUTOCOMMIT=0;

START TRANSACTION;
SAVEPOINT BEFORE_T;
INSERT INTO rental (rental.rental_date,rental.inventory_id, rental.customer_id, rental.staff_id, rental.last_update) VALUES 
(NOW(), inventoryId, customerId, staffId, NOW());

SELECT LAST_INSERT_ID() INTO @lastId FROM rental LIMIT 1;
INSERT INTO payment (payment.customer_id, payment.staff_id, payment.rental_id ,payment.amount) VALUES
(customerId, staffId,@lastId, 0);

SELECT COUNT(*)  INTO @result FROM rental WHERE  rental.return_date IS NULL AND rental.inventory_id= inventoryId;
SELECT @result;

IF @result >1 THEN
ROLLBACK TO BEFORE_T;
SELECT 'This movie is already rented' AS Response;

ELSE
COMMIT;
SELECT  'Thank you' AS Response;
END IF;


SET AUTOCOMMIT = 1;

END