CREATE DEFINER=`root`@`localhost` PROCEDURE `rentar`(peli_id INT, custom_id INT, staff_id INT, store_id INT)
BEGIN
	declare last_id INT;
    declare val varchar(20);
	SET autocommit = 0;
	start transaction;
	savepoint rentar;
	INSERT INTO rental (rental.rental_date, rental.inventory_id,
						rental.customer_id, rental.staff_id,
						rental.last_update)
						VALUES(NOW(), peli_id, custom_id, staff_id, NOW());
                        
	SELECT last_insert_id() from rental LIMIT 1 into last_id;
    
    INSERT INTO payment (payment.customer_id, payment.staff_id, payment.rental_id,
					payment.amount) VALUES (custom_id, staff_id, @last_id,100);
                    
	select if(count(*)>1, "simon","nel") as mas_de_una_rentada
	from rental where return_date IS NULL AND inventory_id = peli_id into @val;
    
    If @val = "simon" THEN
	rollback to rentar;
	select "Esta pelicula ya esta rentada" as respuesta;
    ELSE
    commit;
    select CONCAT("Has rentado la pelicula con id ", peli_id) as respuesta;
    end if;
    SET autocommit = 1;
END