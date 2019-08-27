DELIMITER $$
DROP PROCEDURE IF EXISTS rent_movie;$$
CREATE PROCEDURE rent_movie(idinventory SMALLINT,idcustomer SMALLINT,idstaff TINYINT)
BEGIN
	DECLARE lastrental INT;
    DECLARE cant INT;
	SET autocommit=0;
	START TRANSACTION;
    INSERT INTO rental(rental_date, inventory_id, customer_id, staff_id, last_update) 
						VALUES (NOW(),idinventory,idcustomer,idstaff,NOW());
	SET lastrental = (SELECT LAST_INSERT_ID() FROM rental LIMIT 1);
    INSERT INTO payment(payment.customer_id, payment.staff_id, payment.rental_id, payment.amount) 
						VALUES (idcustomer, idstaff, lastrental, 10);
	SET cant=( SELECT COUNT(*) AS val FROM rental WHERE return_date IS NULL GROUP BY rental_id LIMIT 1);
    IF cant > 1 THEN
		ROLLBACK; -- Error
	ELSE
		COMMIT; -- Rented
	END IF;
END
$$