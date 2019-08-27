DELIMITER %%
DROP PROCEDURE IF EXISTS rent_movie;
CREATE PROCEDURE rent_movie (IN id_inv INT, IN id_cus INT, IN id_staf INT) 
BEGIN
  DECLARE id_last INT;
  DECLARE ret_date INT;
  
  SET AUTOCOMMIT = 0;
  START TRANSACTION;
  SAVEPOINT save;
  INSERT INTO rental (rental.rental_date,rental.inventory_id, rental.customer_id, rental.staff_id, rental.last_update)
			   VALUES(NOW(), id_inv, id_cus, id_staf, NOW());
               
  SELECT LAST_INSERT_ID() INTO @id_last FROM rental LIMIT 1;
  
  INSERT INTO PAYMENT (customer_id, staff_id, rental_id, amount)
                VALUES(id_cus, id_staf, @id_last, 20.00);
  
  SELECT COUNT(*) INTO @ret_date FROM rental WHERE inventory_id = id_inv AND return_date IS NULL;
  SELECT @ret_date;
  IF @ret_date > 1 THEN
    ROLLBACK TO save;
    SELECT 'La pelicula ya esta rentada' AS Resultado;
  ELSE 
    COMMIT;
    SELECT 'Pelicula rentada exitosamente' AS Resultado;
  END IF;
  SET autocommit = 1;
END%%
DELIMITER ; 