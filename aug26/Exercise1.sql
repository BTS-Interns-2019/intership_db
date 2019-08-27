USE sakila;
DROP PROCEDURE IF EXISTS movie;
DELIMITER //
CREATE PROCEDURE movie (
IN inventory_id INT,
IN customer_id INT,
IN staff_id INT
) 
BEGIN
  DECLARE last_id INT;
  DECLARE result INT;
  SET AUTOCOMMIT = 0;
  
  START TRANSACTION;
  SAVEPOINT result_save;
  
  INSERT INTO rental (rental.rental_date, rental.inventory_id, rental.customer_id, rental.staff_id)
  VALUES(NOW(), inventory_id, customer_id, staff_id);
               
  SELECT last_insert_id() INTO @last_id FROM rental LIMIT 1;
  INSERT INTO payment(customer_id, staff_id, rental_id, amount)
  VALUES(customer_id, staff_id, @last_id, 4.99);  
                
  SELECT COUNT(*) INTO @result FROM rental WHERE inventory_id = inventory_id AND return_date IS NULL;
  SELECT @result;
  
  IF @result > 1 THEN
	ROLLBACK TO result_save;
    SELECT 'pelicula no disponible' AS Mensaje;
    
  ELSE 
    COMMIT;
    SELECT 'Pelicula rentada' AS Mensaje;
  END IF;
  
  SET autocommit = 1;
END//
DELIMITER ; 


CALL sakila.movie(50, 300, 2);