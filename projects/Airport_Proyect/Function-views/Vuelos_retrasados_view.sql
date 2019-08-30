CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `vuelos_retrasados` AS
    SELECT 
        `vuelo`.`id` AS `vuelo`,
        `modelo`.`nombre` AS `Modelo del avion`,
        TIMEDIFF(`vuelo`.`hora_salida`,
                `itinerario`.`hora`) AS `Tiempo de retraso`,
        CIUDAD_DE_AEROPUERTO(`rutas`.`origen_id`) AS `Ciudad de origen`,
        CIUDAD_DE_AEROPUERTO(`rutas`.`destino_id`) AS `Ciudad de destino`
    FROM
        ((((((((`vuelo`
        JOIN `itinerario` ON ((`vuelo`.`itinerario_id` = `itinerario`.`id`)))
        JOIN `avion` ON ((`vuelo`.`avion_id` = `avion`.`id`)))
        JOIN `modelo` ON ((`avion`.`modelo_id` = `modelo`.`id`)))
        JOIN `rutas` ON ((`itinerario`.`ruta_id` = `rutas`.`id`)))
        JOIN `aeropuerto` ON ((`rutas`.`origen_id` = `aeropuerto`.`id`)))
        JOIN `ciudad` ON ((`aeropuerto`.`ciudad_id` = `ciudad`.`id`)))
        JOIN `estado` ON ((`ciudad`.`estado_id` = `estado`.`id`)))
        JOIN `pais` ON ((`estado`.`pais_id` = `pais`.`id`)))
    WHERE
        ((`itinerario`.`hora` - `vuelo`.`hora_salida`) < 0)
    GROUP BY `vuelo`.`id`
    ORDER BY `vuelo`.`id`