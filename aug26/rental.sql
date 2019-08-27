CREATE DEFINER=`root`@`localhost` PROCEDURE `rental`(inventory mediumint(8), customer smallint(5), staff tinyint(3))
BEGIN

DECLARE rent_id int;
DECLARE valor int;
set autocommit= 0;
start transaction;
savepoint nani;
insert rental (rental_date, inventory_id, customer_id, return_date, staff_id)
values (now(), inventory, customer, date_add(now(), interval 3 DAY), staff);

select rental_id into @rent_id from rental
order by rental_id desc 
limit 1;

insert payment (customer_id, staff_id, rental_id, amount, payment_date)
values(customer, staff, @rent_id, 3.33, now());

	select if(count(*) > 0, 0, 1) into @valor
    from rental 
    where inventory_id = inventory
    and return_date is null ;
    
if @valor = 0 then
select "unavailable"; 
rollback to nani;
else 
select "rented";
commit;
end if;
set autocommit= 1;
END