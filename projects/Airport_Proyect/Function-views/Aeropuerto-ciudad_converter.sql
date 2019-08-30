CREATE DEFINER=`root`@`localhost` FUNCTION `ciudad_de_aeropuerto`(aero_id INT) RETURNS varchar(50) CHARSET utf8
    DETERMINISTIC
BEGIN
SET @origen = (SELECT `ciudad`.ciudad
			   FROM `ciudad`
               JOIN `aeropuerto` ON `ciudad`.id = `aeropuerto`.ciudad_id
               WHERE `aeropuerto`.id = aero_id);
			   

RETURN @origen;
END