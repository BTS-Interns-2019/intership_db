CREATE DEFINER=`root`@`localhost` FUNCTION `asientos_disponibles`(vuelo INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
SET @avion_asiento := (SELECT `modelo`.n_asientos
					   FROM `modelo`
					   JOIN `avion` ON `modelo`.id = `avion`.modelo_id
					   JOIN `vuelo` ON `avion`.id = `vuelo`.avion_id
					   WHERE `vuelo`.id = vuelo);
SET @pasajeros_vuelo := (SELECT COUNT(*)
						 FROM `pasajero`
						 JOIN `boleto` ON `pasajero`.id = `boleto`.pasajero_id
						 JOIN `vuelo` ON `boleto`.vuelo_id = `vuelo`.id
						 WHERE `vuelo`.id = 8);
RETURN (@avion_asiento - @pasajeros_vuelo);
END