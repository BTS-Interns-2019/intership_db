CREATE DEFINER=`root`@`localhost` FUNCTION `mes_mas_vuela`() RETURNS varchar(50) CHARSET utf8
    DETERMINISTIC
BEGIN
SET @bestseller := (SELECT Mes.Mesmes 
				   FROM ( SELECT COUNT(*) total, 
				   MONTH(`vuelo`.fecha) as Mesmes
	               FROM `vuelo`
				   GROUP BY MONTH(fecha)
				   ORDER BY total desc
				   LIMIT 1) as Mes);
SET @mes := (SELECT ELT(@bestseller, 'Enero','Febrero','Marzo','Abril','Mayo',
                                     'Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'));
RETURN @mes;
END