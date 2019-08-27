CREATE DEFINER=`root`@`localhost` FUNCTION `return_date`(film INT) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
SET @return_date := (SELECT `rental`.return_date
					 FROM `rental`
					 JOIN `inventory` ON `rental`.inventory_id = `inventory`.inventory_id
					 WHERE `inventory`.film_id = film
                     LIMIT 1);

IF @return_date IS NULL THEN
	RETURN 'Unsuccess';
ELSE
	RETURN 'Success';
END IF;
END