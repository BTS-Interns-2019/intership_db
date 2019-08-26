CREATE DEFINER=`root`@`localhost` PROCEDURE `transaccion`(idfilm int,idcustomer int, idstore int, idstaff int)
 BEGIN start transaction;
  -- guardo el inventory 
  SELECT inventory_id 
  into@idinventory 
  FROM inventory 
  WHERE film_id = idfilm 
  and store_id = idstore;
   -- guardo ultimo return date de esa pelicula 
   select return_date 
   into @lastreturn 
   from rental 
   where inventory_id = idinventory 
   order by rental_id desc 
   limit 1; 
   -- ingresa rental 
   insert into rental (rental_date,inventory_id,customer_id,staff_id) 
   values (curdate(),idinventory,idcustomer,idstaff);
    -- guardo ese id 
    select MAX(rental_id)
     into @idrental from rental; 
     -- ingreso payment  
     insert into payment (customer_id,staff_id,rental_id,amount,payment_date) 
     values  (idcustomer,idstaff,idrental,300,curdate());   
     if lastreturn is null 
      then  rollback;  
      else  commit;  
      end if;
       END
