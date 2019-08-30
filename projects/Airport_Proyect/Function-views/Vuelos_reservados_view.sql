CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vuelos_reservados` AS
    SELECT 
        `vuelo`.`id` AS `Vuelo`,
        CONCAT(`pasajero`.`nombre`,
                `pasajero`.`apellido`) AS `Pasajero`,
        DATE_FORMAT(`vuelo`.`fecha`, '%d-%m-%Y') AS `Fecha`,
        CONCAT(`itinerario`.`hora`, 'hrs') AS `Horario`
    FROM
        (((`vuelo`
        JOIN `boleto` ON ((`vuelo`.`id` = `boleto`.`vuelo_id`)))
        JOIN `pasajero` ON ((`boleto`.`pasajero_id` = `pasajero`.`id`)))
        JOIN `itinerario` ON ((`vuelo`.`itinerario_id` = `itinerario`.`id`)))
    WHERE
        (`vuelo`.`fecha` > CAST(NOW() AS TIME))