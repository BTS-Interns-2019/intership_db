USE `TallerMecanico`;

INSERT INTO Cliente (idCliente,nombre, apellido, telefono, direccion)
VALUES
(1,'PEDRO','ROJAS','320456879','125 ROQUE'),
(2,'JUAN','GONZALEZ','3154879678','HIDALGO 255'),
(3,'ANDRES','RIVERA','2561021546','MORELOS 400'),
(4,'JOSE','CERVANTES','334524896','LIBERTAD 58'),
(5,'ROGELIO','ROBLES','334569807','LIBERTAD 120');

INSERT INTO factura (idFactura, fecha, Cliente_idCliente) VALUES (1, '2018-06-12', 1);
INSERT INTO factura (idFactura, fecha, Cliente_idCliente) VALUES (2, '2018-10-19', 2);
INSERT INTO factura (idFactura, fecha, Cliente_idCliente) VALUES (3, '2018-09-15', 3);
INSERT INTO factura (idFactura, fecha, Cliente_idCliente) VALUES (4, '2018-06-23', 4);
INSERT INTO factura (idFactura, fecha, Cliente_idCliente) VALUES (5, '2018-10-27', 5);

insert into Proveedor (idProveedor, name) values (1, 'Kohler-Farrell');
insert into Proveedor (idProveedor, name) values (2, 'Feest Inc');
insert into Proveedor (idProveedor, name) values (3, 'Bashirian-Wuckert');
insert into Proveedor (idProveedor, name) values (4, 'Collins, Yost and Zboncak');
insert into Proveedor (idProveedor, name) values (5, 'Gulgowski, Gerhold and Hackett');
insert into Proveedor (idProveedor, name) values (6, 'Lakin LLC');
insert into Proveedor (idProveedor, name) values (7, 'Bins-Ward');
insert into Proveedor (idProveedor, name) values (8, 'Boyer-Stokes');
insert into Proveedor (idProveedor, name) values (9, 'Kris, Hackett and Swaniawski');
insert into Proveedor (idProveedor, name) values (10, 'Wilkinson-D''Amore');
insert into Proveedor (idProveedor, name) values (11, 'Metz, Romaguera and Halvorson');
insert into Proveedor (idProveedor, name) values (12, 'Hartmann, Quitzon and Abernathy');
insert into Proveedor (idProveedor, name) values (13, 'Lubowitz, Koss and Orn');
insert into Proveedor (idProveedor, name) values (14, 'McDermott-Yundt');
insert into Proveedor (idProveedor, name) values (15, 'D''Amore, Bergstrom and Strosin');
insert into Proveedor (idProveedor, name) values (16, 'Howell, Cormier and Cummerata');
insert into Proveedor (idProveedor, name) values (17, 'Hintz, Osinski and Wilderman');
insert into Proveedor (idProveedor, name) values (18, 'Reilly LLC');
insert into Proveedor (idProveedor, name) values (19, 'Rowe, Bednar and Spencer');
insert into Proveedor (idProveedor, name) values (20, 'Mills Inc');




INSERT INTO Anio (anio) VALUES
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019);

INSERT INTO Marca (idMarca,`name`, Anio_idAnio) VALUES
(1,'CHAVROLET', 1),
(2,'CHAVROLET', 2),
(3,'CHAVROLET', 3),
(4,'CHAVROLET', 4),
(5,'CHAVROLET', 5),
(6,'CHAVROLET', 6),
(7,'CHAVROLET', 7),
(8,'CHAVROLET', 8),
(9,'CHAVROLET', 9),
(10,'CHAVROLET', 10),
(11,'CHAVROLET', 11),
(12,'CHAVROLET', 12),
(13,'CHAVROLET', 13),
(14,'CHAVROLET', 14),
(15,'CHAVROLET', 15),
(16,'CHAVROLET', 16),
(17,'CHAVROLET', 17),
(18,'CHAVROLET', 18),
(19,'CHAVROLET', 19),
(20,'CHAVROLET', 20),
(21,'FORD', 1),
(22,'FORD', 2),
(23,'FORD', 3),
(24,'FORD', 4),
(25,'FORD', 5),
(26,'FORD', 6),
(27,'FORD', 7),
(28,'FORD', 8),
(29,'FORD', 9),
(30,'FORD', 10),
(31,'FORD', 11),
(32,'FORD', 12),
(33,'FORD', 13),
(34,'FORD', 14),
(35,'FORD', 15),
(36,'FORD', 16),
(37,'FORD', 17),
(38,'FORD', 18),
(39,'FORD', 19),
(40,'FORD', 20),
(41,'MITSUBICHI', 1),
(42,'MITSUBICHI', 2),
(43,'MITSUBICHI', 3),
(44,'MITSUBICHI', 4),
(45,'MITSUBICHI', 5),
(46,'MITSUBICHI', 6),
(47,'MITSUBICHI', 7),
(48,'MITSUBICHI', 8),
(49,'MITSUBICHI', 9),
(50,'MITSUBICHI', 10),
(51,'MITSUBICHI', 11),
(52,'MITSUBICHI', 12),
(53,'MITSUBICHI', 13),
(54,'MITSUBICHI', 14),
(55,'HONDA', 1),
(56,'HONDA', 2),
(57,'HONDA', 3),
(58,'HONDA', 4),
(59,'HONDA', 5),
(60,'HONDA', 6),
(62,'HONDA', 7),
(63,'HONDA', 8),
(64,'HONDA', 9),
(65,'HONDA', 10),
(66,'HONDA', 11),
(67,'HONDA', 12),
(68,'HONDA', 13),
(69,'HONDA', 14),
(70,'HONDA', 15),
(72,'HONDA', 16),
(73,'HONDA', 17),
(74,'HONDA', 18),
(75,'HONDA', 19),
(76,'HONDA', 20),
(77,'TOYOTA', 1),
(78,'TOYOTA', 2),
(79,'TOYOTA', 3),
(80,'TOYOTA', 4),
(81,'TOYOTA', 5),
(82,'TOYOTA', 6),
(83,'TOYOTA', 7),
(84,'TOYOTA', 8),
(85,'TOYOTA', 9),
(86,'TOYOTA', 10),
(87,'TOYOTA', 11),
(88,'TOYOTA', 12),
(89,'TOYOTA', 13),
(90,'TOYOTA', 14),
(91,'TOYOTA', 15),
(92,'TOYOTA', 16),
(93,'TOYOTA', 17),
(94,'TOYOTA', 18),
(95,'TOYOTA', 19),
(96,'TOYOTA', 20);

insert into Modelo (idModelo, `name`, Marca_idMarca) values (1,'924 S', 55);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (2,'Contour', 24);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (3,'Galant', 14);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (4,'Miata MX-5', 33);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (5,'Quest', 29);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (6,'Golf', 11);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (7,'SRX', 5);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (8,'944', 16);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (9,'Xterra', 42);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (10,'Mazda6', 53);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (11,'F430', 27);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (12,'TL', 38);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (13,'944', 57);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (14,'Breeze', 10);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (15,'Yaris', 5);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (16,'Frontier', 32);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (17,'S4', 1);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (18,'Odyssey', 65);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (19,'5 Series', 92);
insert into Modelo (idModelo, `name`, Marca_idMarca) values (20,'Accord', 34);

insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (1, 'Bujia', 398.6, 'Acme', 'MU-288-t', 17);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (2, 'Bomba de Gasolina', 843.79, 'Acme', 'EI-887-t', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (3, 'Filtro de Aceite', 428.13, 'Valucraft', 'JG-554-z', 8);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (4, 'Bomba de Gasolina', 378.81, 'Gonher', 'FW-452-g', 18);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (5, 'Balatas', 132.96, 'Gonher', 'WO-390-f', 2);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (6, 'Bomba de Gasolina', 275.39, 'Bosch', 'GC-855-b', 17);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (7, 'Filtro de Aceite', 728.52, 'Gonher', 'LZ-231-f', 20);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (8, 'Filtro de Aceite', 705.04, 'Acme', 'GC-919-r', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (9, 'Filtro de Aceite', 400.14, 'Gonher', 'OE-513-o', 12);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (10, 'Bujia', 436.52, 'Autolite', 'MX-288-j', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (11, 'Filtro de Aceite', 862.6, 'Great Value', 'HV-735-x', 5);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (12, 'Bujia', 436.09, 'Duralast', 'UT-901-m', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (13, 'Bomba de Gasolina', 663.47, 'Gonher', 'BH-521-x', 2);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (14, 'Filtro de Gasolina', 183.04, 'Valucraft', 'HG-114-a', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (15, 'Balatas', 959.75, 'Great Value', 'EY-638-b', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (16, 'Bujia', 277.68, 'Valucraft', 'GI-761-m', 8);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (17, 'Filtro de Aceite', 835.76, 'Bosch', 'HS-491-d', 7);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (18, 'Filtro de Aceite', 573.58, 'Duralast', 'YM-850-j', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (19, 'Flitro de Aire', 491.02, 'Great Value', 'RX-834-i', 18);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (20, 'Bomba de Gasolina', 281.21, 'Bosch', 'ZO-489-g', 14);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (21, 'Bujia', 257.04, 'Duralast', 'UJ-573-a', 4);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (22, 'Balatas', 750.12, 'Duralast', 'QY-094-k', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (23, 'Filtro de Aceite', 682.93, 'Duralast', 'AZ-435-c', 11);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (24, 'Bomba de Gasolina', 244.03, 'Gonher', 'DP-304-r', 15);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (25, 'Flitro de Aire', 485.76, 'Bosch', 'BT-507-p', 8);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (26, 'Filtro de Aceite', 364.55, 'Valucraft', 'OD-386-k', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (27, 'Flitro de Aire', 442.82, 'Duralast', 'AE-057-p', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (28, 'Balatas', 516.37, 'Duralast', 'JB-011-c', 12);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (29, 'Bomba de Gasolina', 346.0, 'Duralast', 'ME-794-r', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (30, 'Filtro de Gasolina', 996.48, 'Acme', 'UC-292-q', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (31, 'Filtro de Gasolina', 242.34, 'Bosch', 'EO-492-n', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (32, 'Flitro de Aire', 342.12, 'Gonher', 'HC-465-a', 4);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (33, 'Bomba de Gasolina', 888.9, 'Great Value', 'EM-018-h', 3);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (34, 'Balatas', 454.88, 'Great Value', 'KX-083-l', 1);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (35, 'Flitro de Aire', 947.98, 'Autolite', 'LG-054-c', 2);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (36, 'Bujia', 195.6, 'Gonher', 'JD-600-y', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (37, 'Filtro de Gasolina', 705.42, 'Acme', 'EM-461-b', 13);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (38, 'Filtro de Gasolina', 755.43, 'Acme', 'KQ-300-g', 4);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (39, 'Bujia', 788.01, 'Bosch', 'EJ-383-o', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (40, 'Filtro de Aceite', 897.32, 'Bosch', 'BH-690-n', 20);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (41, 'Flitro de Aire', 906.3, 'Autolite', 'LB-907-s', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (42, 'Filtro de Aceite', 704.47, 'Duralast', 'CK-811-s', 7);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (43, 'Bomba de Gasolina', 583.12, 'Valucraft', 'EJ-100-g', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (44, 'Bomba de Gasolina', 143.0, 'Great Value', 'VG-659-n', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (45, 'Filtro de Gasolina', 959.42, 'Valucraft', 'NZ-948-y', 18);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (46, 'Filtro de Aceite', 695.63, 'Gonher', 'GT-805-e', 18);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (47, 'Balatas', 864.28, 'Great Value', 'PO-173-s', 3);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (48, 'Bomba de Gasolina', 674.55, 'Valucraft', 'HT-768-v', 5);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (49, 'Filtro de Gasolina', 773.22, 'Bosch', 'GS-200-b', 2);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (50, 'Flitro de Aire', 559.65, 'Bosch', 'KF-217-w', 1);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (51, 'Bujia', 965.77, 'Bosch', 'LO-987-n', 11);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (52, 'Bujia', 808.26, 'Great Value', 'CW-898-v', 2);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (53, 'Bomba de Gasolina', 994.96, 'Great Value', 'JH-218-e', 5);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (54, 'Filtro de Gasolina', 99.42, 'Duralast', 'UJ-790-s', 13);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (55, 'Bujia', 964.91, 'Duralast', 'LQ-536-d', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (56, 'Filtro de Aceite', 77.56, 'Great Value', 'NP-809-n', 4);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (57, 'Filtro de Aceite', 455.77, 'Acme', 'OF-309-l', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (58, 'Flitro de Aire', 128.37, 'Duralast', 'RG-347-c', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (59, 'Bomba de Gasolina', 345.28, 'Gonher', 'JU-928-h', 1);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (60, 'Bomba de Gasolina', 666.91, 'Great Value', 'RQ-466-q', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (61, 'Flitro de Aire', 696.84, 'Great Value', 'ZF-545-r', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (62, 'Bomba de Gasolina', 406.27, 'Bosch', 'DZ-985-r', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (63, 'Filtro de Gasolina', 211.93, 'Duralast', 'WP-780-r', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (64, 'Bujia', 549.05, 'Great Value', 'BH-252-t', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (65, 'Balatas', 380.44, 'Great Value', 'HR-227-m', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (66, 'Flitro de Aire', 896.13, 'Acme', 'SR-018-b', 12);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (67, 'Filtro de Gasolina', 824.83, 'Gonher', 'LO-441-d', 17);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (68, 'Flitro de Aire', 553.99, 'Duralast', 'NZ-189-m', 9);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (69, 'Flitro de Aire', 838.12, 'Autolite', 'OZ-311-j', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (70, 'Balatas', 792.39, 'Duralast', 'UW-749-l', 13);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (71, 'Bujia', 708.15, 'Great Value', 'WC-871-w', 15);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (72, 'Balatas', 284.94, 'Valucraft', 'HJ-428-q', 12);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (73, 'Bomba de Gasolina', 116.01, 'Acme', 'OV-459-q', 11);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (74, 'Flitro de Aire', 576.18, 'Acme', 'SE-973-i', 15);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (75, 'Bomba de Gasolina', 598.05, 'Duralast', 'HB-848-d', 20);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (76, 'Bujia', 86.5, 'Acme', 'AV-782-t', 20);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (77, 'Bomba de Gasolina', 781.68, 'Autolite', 'FY-345-z', 18);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (78, 'Filtro de Aceite', 263.08, 'Duralast', 'DM-152-r', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (79, 'Filtro de Aceite', 915.96, 'Duralast', 'NL-120-n', 11);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (80, 'Bujia', 275.61, 'Bosch', 'RK-935-m', 8);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (81, 'Filtro de Gasolina', 745.23, 'Valucraft', 'LR-448-q', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (82, 'Bomba de Gasolina', 280.58, 'Duralast', 'FU-430-j', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (83, 'Balatas', 736.88, 'Duralast', 'PX-074-i', 11);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (84, 'Bomba de Gasolina', 97.83, 'Great Value', 'NY-914-v', 16);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (85, 'Balatas', 370.79, 'Acme', 'VG-592-t', 7);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (86, 'Bomba de Gasolina', 434.16, 'Bosch', 'UN-619-d', 12);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (87, 'Bomba de Gasolina', 135.36, 'Gonher', 'OT-587-q', 17);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (88, 'Bujia', 508.92, 'Duralast', 'ND-140-u', 7);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (89, 'Balatas', 216.38, 'Acme', 'FD-390-q', 3);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (90, 'Bujia', 502.98, 'Great Value', 'MV-156-x', 13);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (91, 'Filtro de Gasolina', 805.82, 'Acme', 'ZU-438-q', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (92, 'Balatas', 878.43, 'Gonher', 'BT-551-x', 15);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (93, 'Filtro de Aceite', 234.61, 'Acme', 'RE-327-q', 6);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (94, 'Filtro de Gasolina', 536.84, 'Bosch', 'EG-726-m', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (95, 'Filtro de Aceite', 349.65, 'Duralast', 'CZ-170-z', 13);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (96, 'Bomba de Gasolina', 752.44, 'Bosch', 'MI-130-c', 13);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (97, 'Filtro de Aceite', 630.02, 'Duralast', 'BJ-735-t', 8);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (98, 'Balatas', 297.72, 'Autolite', 'RV-179-f', 10);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (99, 'Flitro de Aire', 450.52, 'Great Value', 'AU-364-i', 19);
insert into Refaccion (idRefaccion, name, precio, marca_refaccion, modelo_refaccion, Modelo_idModelo) values (100, 'Filtro de Gasolina', 377.42, 'Acme', 'AN-693-b', 19);

insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (1, 15, 38);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (2, 20, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (3, 14, 76);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (4, 12, 70);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (5, 10, 99);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (6, 7, 24);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (7, 16, 32);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (8, 1, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (9, 14, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (10, 15, 92);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (11, 8, 84);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (12, 8, 10);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (13, 20, 1);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (14, 17, 78);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (15, 2, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (16, 10, 17);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (17, 4, 88);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (18, 15, 17);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (19, 14, 55);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (20, 14, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (21, 18, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (22, 12, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (23, 8, 84);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (24, 8, 41);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (25, 19, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (26, 6, 39);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (27, 5, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (28, 6, 74);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (29, 19, 21);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (30, 3, 70);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (31, 20, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (32, 5, 51);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (33, 5, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (34, 18, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (35, 15, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (36, 14, 47);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (37, 16, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (38, 1, 30);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (39, 9, 97);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (40, 9, 91);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (41, 9, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (42, 5, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (43, 13, 92);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (44, 20, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (45, 14, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (46, 11, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (47, 2, 8);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (48, 9, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (49, 6, 68);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (50, 19, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (51, 5, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (52, 6, 70);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (53, 13, 84);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (54, 11, 8);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (55, 19, 84);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (56, 10, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (57, 1, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (58, 16, 39);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (59, 17, 11);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (60, 4, 1);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (61, 10, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (62, 16, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (63, 13, 4);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (64, 13, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (65, 12, 47);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (66, 4, 86);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (67, 9, 8);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (68, 19, 59);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (69, 20, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (70, 12, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (71, 17, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (72, 4, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (73, 16, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (74, 16, 2);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (75, 12, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (76, 9, 32);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (77, 9, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (78, 13, 6);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (79, 7, 70);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (80, 3, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (81, 4, 15);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (82, 10, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (83, 16, 25);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (84, 11, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (85, 13, 98);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (86, 1, 68);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (87, 20, 41);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (88, 20, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (89, 18, 29);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (90, 3, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (91, 19, 96);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (92, 18, 20);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (93, 14, 88);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (94, 17, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (95, 17, 1);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (96, 14, 17);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (97, 7, 12);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (98, 13, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (99, 13, 81);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (100, 19, 94);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (101, 20, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (102, 13, 46);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (103, 17, 47);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (104, 15, 74);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (105, 15, 36);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (106, 2, 95);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (107, 5, 38);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (108, 6, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (109, 5, 90);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (110, 6, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (111, 16, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (112, 5, 60);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (113, 19, 10);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (114, 9, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (115, 20, 44);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (116, 15, 99);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (117, 6, 74);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (118, 9, 17);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (119, 18, 92);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (120, 8, 19);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (121, 13, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (122, 17, 48);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (123, 4, 64);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (124, 15, 16);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (125, 3, 34);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (126, 6, 36);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (127, 2, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (128, 16, 100);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (129, 7, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (130, 11, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (131, 16, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (132, 2, 55);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (133, 15, 69);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (134, 6, 95);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (135, 20, 67);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (136, 14, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (137, 15, 10);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (138, 10, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (139, 14, 8);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (140, 6, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (141, 19, 41);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (142, 16, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (143, 11, 41);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (144, 6, 4);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (145, 7, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (146, 13, 76);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (147, 20, 6);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (148, 18, 60);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (149, 7, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (150, 20, 20);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (151, 8, 51);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (152, 4, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (153, 15, 97);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (154, 19, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (155, 4, 70);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (156, 12, 11);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (157, 5, 27);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (158, 8, 45);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (159, 6, 22);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (160, 12, 35);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (161, 12, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (162, 3, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (163, 18, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (164, 20, 39);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (165, 11, 51);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (166, 15, 30);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (167, 5, 96);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (168, 2, 100);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (169, 14, 89);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (170, 9, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (171, 17, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (172, 5, 81);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (173, 10, 20);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (174, 6, 94);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (175, 1, 4);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (176, 19, 72);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (177, 4, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (178, 1, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (179, 3, 86);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (180, 14, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (181, 1, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (182, 13, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (183, 19, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (184, 7, 20);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (185, 20, 74);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (186, 2, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (187, 10, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (188, 20, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (189, 19, 85);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (190, 9, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (191, 15, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (192, 3, 48);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (193, 10, 79);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (194, 2, 98);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (195, 18, 84);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (196, 2, 3);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (197, 5, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (198, 6, 89);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (199, 3, 88);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (200, 9, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (201, 19, 52);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (202, 20, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (203, 4, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (204, 3, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (205, 7, 3);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (206, 16, 31);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (207, 16, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (208, 7, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (209, 13, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (210, 18, 67);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (211, 17, 38);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (212, 1, 19);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (213, 12, 52);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (214, 7, 90);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (215, 9, 39);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (216, 13, 24);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (217, 9, 43);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (218, 16, 7);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (219, 16, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (220, 13, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (221, 18, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (222, 12, 22);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (223, 11, 29);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (224, 16, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (225, 14, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (226, 11, 1);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (227, 18, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (228, 12, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (229, 10, 57);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (230, 10, 27);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (231, 5, 60);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (232, 7, 7);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (233, 4, 6);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (234, 15, 34);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (235, 14, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (236, 6, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (237, 10, 25);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (238, 10, 16);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (239, 1, 55);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (240, 6, 45);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (241, 18, 47);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (242, 9, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (243, 2, 98);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (244, 7, 27);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (245, 5, 27);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (246, 13, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (247, 10, 14);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (248, 19, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (249, 18, 95);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (250, 4, 31);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (251, 4, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (252, 2, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (253, 10, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (254, 3, 61);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (255, 17, 43);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (256, 11, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (257, 4, 32);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (258, 9, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (259, 10, 72);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (260, 9, 8);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (261, 3, 2);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (262, 20, 31);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (263, 7, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (264, 19, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (265, 6, 74);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (266, 3, 56);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (267, 12, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (268, 1, 45);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (269, 14, 89);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (270, 19, 68);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (271, 5, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (272, 6, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (273, 1, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (274, 20, 22);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (275, 20, 18);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (276, 1, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (277, 8, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (278, 3, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (279, 20, 90);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (280, 13, 18);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (281, 7, 3);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (282, 19, 10);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (283, 1, 47);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (284, 11, 18);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (285, 18, 60);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (286, 20, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (287, 4, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (288, 17, 64);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (289, 17, 25);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (290, 16, 34);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (291, 20, 2);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (292, 16, 99);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (293, 18, 16);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (294, 16, 96);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (295, 14, 35);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (296, 20, 81);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (297, 1, 42);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (298, 11, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (299, 8, 35);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (300, 7, 34);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (301, 7, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (302, 6, 18);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (303, 20, 51);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (304, 6, 91);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (305, 9, 64);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (306, 12, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (307, 18, 64);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (308, 20, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (309, 17, 86);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (310, 14, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (311, 3, 95);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (312, 5, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (313, 19, 35);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (314, 17, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (315, 6, 90);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (316, 7, 36);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (317, 3, 1);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (318, 4, 57);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (319, 16, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (320, 11, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (321, 7, 59);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (322, 19, 57);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (323, 8, 52);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (324, 9, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (325, 19, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (326, 3, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (327, 20, 72);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (328, 9, 89);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (329, 1, 57);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (330, 7, 92);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (331, 4, 24);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (332, 2, 39);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (333, 6, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (334, 20, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (335, 7, 78);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (336, 12, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (337, 13, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (338, 14, 89);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (339, 14, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (340, 7, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (341, 9, 3);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (342, 3, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (343, 2, 4);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (344, 18, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (345, 17, 44);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (346, 10, 48);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (347, 5, 60);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (348, 1, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (349, 18, 36);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (350, 10, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (351, 7, 84);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (352, 19, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (353, 2, 85);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (354, 9, 69);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (355, 19, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (356, 5, 22);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (357, 11, 88);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (358, 7, 30);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (359, 10, 30);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (360, 6, 88);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (361, 2, 22);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (362, 10, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (363, 19, 74);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (364, 11, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (365, 2, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (366, 2, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (367, 13, 89);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (368, 13, 81);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (369, 3, 24);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (370, 5, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (371, 5, 16);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (372, 14, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (373, 19, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (374, 4, 35);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (375, 8, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (376, 4, 13);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (377, 17, 26);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (378, 7, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (379, 17, 36);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (380, 13, 67);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (381, 19, 61);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (382, 1, 68);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (383, 4, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (384, 15, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (385, 10, 66);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (386, 4, 87);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (387, 12, 31);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (388, 15, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (389, 8, 44);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (390, 19, 45);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (391, 14, 53);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (392, 12, 97);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (393, 4, 36);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (394, 5, 71);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (395, 5, 97);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (396, 12, 87);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (397, 1, 83);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (398, 12, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (399, 16, 58);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (400, 5, 46);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (401, 19, 43);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (402, 19, 86);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (403, 17, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (404, 6, 68);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (405, 6, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (406, 1, 52);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (407, 12, 39);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (408, 8, 78);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (409, 12, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (410, 7, 56);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (411, 19, 78);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (412, 17, 30);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (413, 17, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (414, 9, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (415, 13, 33);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (416, 15, 87);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (417, 7, 56);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (418, 18, 25);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (419, 2, 57);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (420, 12, 35);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (421, 2, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (422, 19, 6);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (423, 19, 68);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (424, 4, 76);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (425, 18, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (426, 20, 95);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (427, 5, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (428, 6, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (429, 3, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (430, 12, 4);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (431, 1, 90);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (432, 12, 26);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (433, 14, 18);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (434, 2, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (435, 16, 85);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (436, 14, 56);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (437, 2, 70);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (438, 7, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (439, 15, 6);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (440, 16, 86);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (441, 4, 43);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (442, 6, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (443, 1, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (444, 12, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (445, 4, 56);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (446, 17, 4);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (447, 19, 16);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (448, 17, 46);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (449, 4, 19);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (450, 13, 12);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (451, 7, 75);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (452, 14, 2);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (453, 17, 7);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (454, 20, 93);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (455, 14, 54);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (456, 8, 82);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (457, 20, 80);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (458, 18, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (459, 6, 77);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (460, 11, 31);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (461, 16, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (462, 15, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (463, 12, 48);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (464, 6, 1);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (465, 8, 2);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (466, 16, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (467, 10, 62);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (468, 18, 50);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (469, 13, 21);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (470, 1, 73);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (471, 8, 86);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (472, 1, 23);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (473, 17, 65);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (474, 11, 7);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (475, 17, 9);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (476, 9, 25);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (477, 19, 78);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (478, 14, 76);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (479, 13, 79);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (480, 12, 19);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (481, 17, 6);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (482, 20, 30);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (483, 9, 41);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (484, 5, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (485, 12, 29);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (486, 9, 5);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (487, 12, 45);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (488, 12, 87);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (489, 18, 100);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (490, 10, 63);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (491, 9, 10);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (492, 6, 96);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (493, 18, 28);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (494, 6, 40);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (495, 12, 95);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (496, 1, 37);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (497, 20, 38);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (498, 13, 25);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (499, 6, 41);
insert into Proveedor_Refaccion (id, Proveedor_idProveedor, Refaccion_idRefaccion) values (500, 19, 57);

INSERT INTO Vehiculo (Cliente_idCliente, Modelo_idModelo)
VALUES
(1,2),
(1,5),
(2,1),
(3,4),
(4,12),
(4,8),
(5,3);
INSERT INTO Estado (idEstado, estado) VALUES
(1,'PROCESO'),
(2,'ESPERA'),
(3,'FINALIZADO');
INSERT INTO Servicio (idServicio, nombre, Estado_idEstado, kilometrage) VALUES
(1,'Cambio de aceite', '1', 2500),
(2,'Afinacion', '3', 89700),
(3,'Cambio de Pila', '3', 2500),
(4,'Cambio de bujias', '3', 85890),
(5,'Reparacion', '3', 8970),
(6,'Chekeo anual', '3', 8500),
(7,'Limpieza de carburador', '1', 30890);

INSERT INTO Vehiculo_Servicio (Vehiculo_idVehiculo, Servicio_idServicio) VALUES
(1, 1),
(1, 3),
(2, 5),
(2, 2),
(3, 6),
(4, 7),
(5, 4);

insert into CostoManoObra (idCostoManoObra, CostoManoObra, Fecha) values (1, 61.64, '2019-06-12');
insert into CostoManoObra (idCostoManoObra, CostoManoObra, Fecha) values (2, 68.93, '2018-10-19');
insert into CostoManoObra (idCostoManoObra, CostoManoObra, Fecha) values (3, 175.19, '2018-09-15');
insert into CostoManoObra (idCostoManoObra, CostoManoObra, Fecha) values (4, 140.91, '2019-06-23');
insert into CostoManoObra (idCostoManoObra, CostoManoObra, Fecha) values (5, 176.75, '2018-10-27');
select * FROM costomanoobra;

insert into Mecanico (idMecanico, nombre, apellido, telefono, CostoManoObra_idCostoManoObra) values (1, 'Hans', 'Speake', '280-469-3002', 1);
insert into Mecanico (idMecanico, nombre, apellido, telefono, CostoManoObra_idCostoManoObra) values (2, 'Leeland', 'Gostyke', '209-617-9187', 2);
insert into Mecanico (idMecanico, nombre, apellido, telefono, CostoManoObra_idCostoManoObra) values (3, 'Zane', 'Lubomirski', '782-257-4902', 3);
insert into Mecanico (idMecanico, nombre, apellido, telefono, CostoManoObra_idCostoManoObra) values (4, 'Lydon', 'Rioch', '763-429-7506', 4);
insert into Mecanico (idMecanico, nombre, apellido, telefono, CostoManoObra_idCostoManoObra) values (5, 'Orazio', 'Nelane', '405-337-0178', 5);

INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (1, 'ENTRADA', 10, 2000, '2019-08-10', 60, NULL);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (2, 'ENTRADA', 22, 4200, '2019-08-10', 10, NULL);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (3, 'ENTRADA', 24, 6200, '2019-08-10', 14, NULL);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (4, 'ENTRADA', 60, 1260, '2019-08-11', 22, NULL);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (5, 'ENTRADA', 100, 8000, '2019-08-11', 16, NULL);

INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (6, 'SALIDA', 2, 400, '2019-08-20', 100, 2);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (7, 'SALIDA', 1, 50, '2019-08-20', 60, 1);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (8, 'SALIDA', 3, 300, '2019-08-21', 14, 2);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (9, 'SALIDA', 2, 160, '2019-08-22', 31, 1);
INSERT INTO movimientos (idMovimientos, tipoMovimiento, cantidad, costos, fecha, Proveedor_Refaccion_id, Mecanico_idMecanico) VALUES (10, 'SALIDA', 4, 200, '2019-08-22', 50, 2);

INSERT INTO Mecanico_Servicio (Servicio_idServicio, Mecanico_idMecanico, horasTrabajo) VALUES
(1, 2, 8),
(2, 2, 6),
(3, 5, 1),
(4, 3, 2),
(5, 1, 10),
(6, 1, 6),
(7, 4, 3);
INSERT INTO Servicio_Factura (Servicio_idServicio, Factura_idFactura) VALUES 
(1, 1),
(3, 1),
(5, 2),
(2, 2),
(6, 3),
(7, 4),
(4, 5);

