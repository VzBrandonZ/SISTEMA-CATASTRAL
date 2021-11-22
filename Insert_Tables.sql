/*
    INSERT IN PROPIETARIO TABLE
*/

INSERT INTO propietario VALUES (1,'Brando Rafael', 'Mero Cepeda', '1728821081', 'shoper687@gmail.com', '(02) 240-7519', '0992720078', '2000/08/19', 'solter@', 1, '142235'),
                                (2,'Maria Alejandra', 'Mero Cepeda', '1728821245', 'MariaAlejandra687@gmail.com', '(02) 250-7213', '0992727589 ', '2000/10/09', 'solter@', 2, '143643'),
                                (3,'Blanca Maria', 'Cepeda Pilay', '1728825896', 'Blancacpeda@hotmail.com', '(02) 250-7512', '0992725389', '2000/08/26', 'casad@', 3, '142645'),
                                (4,'Arturo Eduardo', 'Palacios Ramirez', '1728822234', 'Arturo@hotmail.com', '(02) 240-2345', '0992724444', '2000/08/13', 'solter@', 4, '142456'),
                                (5,'Jose Anguila', 'Chavez Gonzales', '1728821323', 'Jose687@gmail.com', '(02) 250-7675', '0992725253', '2000/07/19', 'casad@', 5, '142435'),
                                (6,'Antonio Ryze', 'Giler Palacios', '1728821121', 'GilerPalacios@gmail.com', '(02) 260-7124', '0992721245', '2000/02/12', 'casad@', 6, '142321'),
                                (7,'Marcelo Rafael', 'Torres Mendez', '1728821213', 'TorresMendez@gmail.com', '(02) 240-7856', '0992723213', '2000/05/11', 'solter@', 7, '142692'),
                                (8,'Jeff Daniel', 'Smith White', '1728822131', 'SmitWhite@hotmail.com', '(02) 240-7543', '0992722134', '2000/08/13', 'solter@', 8, '123456'),
                                (9,'Laura Maria', 'Pareja Borja', '1728879541', 'Laurinakin28@gmail.com', '(02) 240-7523', '0992721212', '2000/12/04', 'solter@', 9, '142235');


/*
    INSERT IN  SERVICIO_TECNICO TABLE
*/

INSERT INTO servicio_tecnico VALUES (1,'Desmembramiento de terreno'),
                                    (2,'Levantamiento topografico'),
                                    (3,'Unificacion de terreno'),
                                    (4,'Medicion satelital'),
                                    (5,'Emision de certificado de propiedad');




/*
    INSERT IN TECNICO TABLE
*/
INSERT INTO tecnico VALUES  (9,'Eduardo Marcelo', 'Mera BLanco', '1892467598', 'EduMera@gmail.com', '(02) 240-1488', '0985566999','1970/09/28', 'casad@',1,1,'2016/05/21', 600, 7.200),
                            (10,'Gustavo Alejandro', 'Villamar Blanco', '1892461235', 'Gus@gmail.com', '(02) 240-1453', '0985565555','1970/09/15', 'Solter@',2,2,'2017/06/21', 600, 7.200),
                            (11,'Franco Alexander', 'Gutierrez Solorzano', '1892467593', 'Guti@gmail.com', '(02) 240-5356', '0985564321','1999/02/08', 'solter@',3,3,'2017/06/25', 600, 7.200),
                            (12,'Rosa Amalia', 'Macias Mera', '1892467432', 'Big@gmail.com', '(02) 240-3524', '0985562777','1990/05/02', 'casad@',4,4,'2018/10/21', 600, 7.200),
                            (13,'Paola Lorena', 'Quiñonez Verde', '1892461274', 'Dark@gmail.com', '(02) 240-4366', '0985562222','1980/03/14', 'solter@',5,5,'2020/09/20', 500, 6.000),
                            (14,'Gonzalo Alexander', 'Blanco Solorzano', '1892467856', 'Guti@gmail.com', '(02) 240-5356', '0985564451','1999/02/08', 'solter@',6,1,'2017/06/25', 600, 7.200),
                            (15,'Aba Paula', 'Macias Torres', '1892462347', 'Big@gmail.com', '(02) 240-3524', '0985562677','1990/05/02', 'casad@',7,2,'2018/10/21', 600, 7.200),
                            (16,'Maria Lorena', 'Quiñonez Ortiz', '1892461234', 'Dark@gmail.com', '(02) 240-4366', '0985562322','1980/03/14', 'solter@',8,3,'2020/09/20', 500, 6.000);



/*
    INSERT IN ZONA TABLE
*/
INSERT INTO zona VALUES (1,'Zona 1'),
                        (2,'Zona 2'),
                        (3,'Zona 3'),
                        (4,'Zona 4'),
                        (5,'Zona 5'),
                        (6,'Zona 6'),
                        (7,'Zona 7'),
                        (8,'Zona 8'),
                        (9,'Zona 9');



/*
    INSERT IN PROVINCIA TABLE
*/
INSERT INTO provincia VALUES    (1,'Carchi'),   /*zona1*/
                                (2,'Napo'),     /*zona2*/
                                (3,'Cotopaxi'), /*zona3*/
                                (4,'Manabi'),   /*zona4*/
                                (5,'Bolivar'),  /*zona5*/
                                (6,'Azuay'),    /*zona6*/
                                (7,'Loja'),     /*zona7*/
                                (8,'Guayaquil'),/*zona8*/
                                (9,'Pichincha');/*zona9*/



/*
    INSERT IN CANTON TABLE
*/
INSERT INTO canton VALUES   (1,'Espejo'),           /*provincia carchi*/
                            (2,'Montúfar-Bolivar'), /*provincia carchi*/
                            (3,'Tena'),             /*provincia napo*/
                            (4,'Archidona'),        /*provincia napo*/
                            (5,'Latacunga'),        /*provincia cotopaxi*/
                            (6,'Pujilí'),           /*provincia cotopaxi*/
                            (7,'Portoviejo'),       /*provincia manabi*/
                            (8,'Manta'),            /*provincia manabi*/
                            (9,'Chimbo'),           /*provincia bolivar*/
                            (10,'Chordeleg'),       /*provincia azuay*/
                            (11,'Cuenca'),          /*provincia azuay*/
                            (12,'Gualaceo'),        /*provincia azuay*/
                            (13,'Loja'),            /*provincia loja*/
                            (14,'Catamayo'),        /*provincia loja*/
                            (15,'Quito');           /*provincia pichincha*/


/*
    INSERT IN PARROQUIA TABLE
*/
INSERT INTO parroquia VALUES    (1,'El Angel'),             /*canton Espejo*/
                                (2,'San Isidro'),           /*canton Espejo*/
                                (3,'San Rafael'),           /*canton Montufar-Bolivar*/
                                (4,'Gonzáles Suárez'),      /*canton Montufar-Bolivar*/
                                (5,'Ahuano'),               /*canton Tena*/
                                (6,'Pano'),                 /*canton Tena*/
                                (7,'Cotundo'),              /*canton Archidona*/
                                (8,'Toacaso'),              /*canton Latabunga*/
                                (9,'Pujilí'),               /*canton Pujilli*/
                                (10,'18 de octubre'),       /*canton Portoviejo*/
                                (11,'Tarqui'),              /*canton Manta*/
                                (12,'San Jose de Chimbo'),  /*canton Chimbo*/
                                (13,'Chordeleg'),           /*canton Chordeleg*/
                                (14,'El Vecino'),           /*canton Cuenca*/
                                (15,'Jadan'),               /*canton Gualaceo*/
                                (16,'Sagrario'),            /*canton Loja*/
                                (17,'Catamayo'),            /*canton Catamayo*/
                                (18,'Llano Chico');         /*canton Quito*/



/*
    INSERT IN TIPO_VIA TABLE
*/
INSERT INTO tipo_via VALUES (1, 'Autopista'),
                            (2, 'Avenida'),
                            (3, 'Calle'),
                            (4, 'Pasaje'),
                            (5, 'Escalinata'),
                            (6, 'Callejon');


/*
    INSERT IN TIPO_RODADURA TABLE
*/
INSERT INTO tipo_rodadura VALUES    (1,'Lastre'),
                                    (2,'Empedrado'),
                                    (3,'Adoquinado'),
                                    (4,'Hormigon Rigido'),
                                    (5,'Asfalto'),
                                    (6,'Tierra');


/*
    INSERT IN PREDIO TABLE
*/
                            /*zona, provincia, canton, parroquia*/
INSERT INTO predio VALUES   (1,1,1,1,2,5,1,'La gran manzana', '40m', '40m','70m', '70m', '2800m²', 'Av.Rondon', 'C. San jose', 'Cerca de Cruz azul, al lado del karaoke'),
                            (2,2,2,3,6,3,6,'Hacienda la Pera', '40ha', '50ha','70ha', '70ha', '280000m²', 'C. la esperanza', 'C. el muerdago', 'al lado de la haciendo Altamira'),
                            (3,3,3,5,8,3,1,'Casa Palacios', '50m', '50m','60m', '60m', '3000m²', 'C.San Lorenzo', 'C. El mango', 'Al frente del parque BuenaVentura'),
                            (4,4,4,8,11,1,1,'Casa Mero', '50m', '50m','70m', '70m', '3500m²', 'Via internacional', 'C.294', 'Cerca de Vivero Cattleya Manta'),
                            (5,5,5,9,12,3,5,'Casa glosario', '30m', '30m','60m', '60m', '1800m²', 'C.Colorado', 'C.cielito lindo', 'Al lado de la tienda VentaMayoritaria'),
                            (6,6,6,11,14,3,5,'Hacienda Arbolera', '50ha', '50ha','70ha', '70ha', '350000m²', 'C.Fuerte y claro', 'C.Mendoza', 'Junto a la haciendo el valle'),
                            (7,7,7,14,17,3,1,'Casa Gonzales', '40m', '40m','70m', '70m', '2800m²', 'C. Cielo Azul', 'C. Correro', 'Al frente de tienda Verde'),
                            (8,8,9,15,18,3,5,'Blanco palacio', '50m', '60m','80m', '80m', '4000m²', 'Av.Milagro', 'C. Miranda', 'Cerca del hospital Hurtado');


/*
    INSERT IN LOTE TABLE
*/
INSERT INTO lote VALUES (1,1,2, '700m²', 'Plano'),
                        (2,2,20, '1400m²', 'Fuerte'),
                        (3,2,5, '1000m²', 'Abruta'),
                        (4,3,2, '700m²', 'Plano'),
                        (5,4,2, '700m²', 'Plano'),
                        (6,5,2, '450m²', 'Moderado'),
                        (7,6,20, '17.500m²', 'Plano'),
                        (8,7,2, '700m²', 'Moderado'),
                        (9,8,2, '1000m²', 'Plano');


/*
    INSERT IN CARTOGRAFIA TABLE
*/
INSERT INTO cartografia VALUES  (1,1,'50', '70'),
                                (2,2,'350', '234'),
                                (3,3,'25', '24'),
                                (4,4,'60', '78'),
                                (5,5,'150', '70'),
                                (6,6,'320', '170'),
                                (7,7,'150', '140'),
                                (8,8,'120', '70');


/*
    INSERT IN TIPO_POBLACION TABLE 
*/
INSERT INTO tipo_poblacion VALUES   (1,'Urbano'),
                                    (2,'Rural');




/*
    INSERT IN USO TABLE 
*/
INSERT INTO uso VALUES  (1,'Residencial'),
                        (2,'Comercial y servicios'),
                        (3,'Industrial'),
                        (4,'Preservacion Patrimonial'),
                        (5,'Recurso Natural'),
                        (6,'Proteccion Ecologica'),
                        (7,'Agricola'),
                        (8,'Salud'),
                        (9,'Cultura'),
                        (10,'Servicios funerarios');



/*
    INSERT IN ADQUISICION TABLE 
*/
INSERT INTO adquisicion VALUES  (1,'Compra-Venta'),
                                (2,'Incautacion'),
                                (3,'Donacion'),
                                (4,'Fideicomiso'),
                                (5,'Embargo'),
                                (6,'Expropiacion'),
                                (7,'Transferencia'),
                                (8,'Herencia');


/*
    INSERT IN SERVICIO_BASICO TABLE
*/
INSERT INTO servicio_basico VALUES  (1,'Agua'),
                                    (2,'Alcantarillado'),
                                    (3,'Letrinizacion'),
                                    (4,'Electricidad'),
                                    (5,'Transporte'),
                                    (6,'Recoleccion de basura'),
                                    (7,'Servicio a internet');



/*
    INSERT IN OTRA_INSTALACION TABLE
*/
INSERT INTO otra_instalacion VALUES  (1,'Piscina'),
                                    (2,'Jacuzzi'),
                                    (3,'Baño'),
                                    (4,'Cocina'),
                                    (5,'Otro');





/*
    INSERT IN FICHA_CATASTRAL TABLE
*/
INSERT INTO ficha_catastral VALUES  (1,2,1,1,'010101020039'),
                                    (2,8,7,2,'020203060039'),
                                    (3,1,1,1,'030305080039'),
                                    (4,1,1,1,'040408110039'),
                                    (5,3,6,1,'050509120039'),
                                    (6,8,7,2,'060611140039'),
                                    (7,1,1,1,'070714170039'),
                                    (8,8,1,1,'080915180039');



/*
    INSERT IN NOTARIA TABLE
*/
INSERT INTO notaria VALUES  (1,'NOTARÍA ÚNICA - 24 DE MAYO', 'Montúfar Palomeque Pedro Daniel Vicente','CALLE PADRE LASSO Y ELOY ALFARO ','Al lado de Cruz azul','05244194'), 
                            (2,'NOTARÍA PRIMERA - BOLÍVAR-CALCETA', 'RIVADENEIRA SION HUGO ALFREDO','CALLE SUCRE ENTRE CALDERÓN Y PICHINCHA','Al lado de funeraria la lloracion','052685188'),
                            (3,'NOTARÍA SEGUNDA - BOLÍVAR-CALCETA', 'COBEÑA BOWEN JAHAIRA MARINEL','CALLE 10 DE AGOSTO Y GRANDA CENTENO','Al lado de santa marta','2686666'),
                            (4,'NOTARÍA SEGUNDA - CHONE', 'MENDOZA ZAMBRANO VOLTAIRE EDUARDO','CALLE PICHINCHA 164 EN ROCAFUERTE','Al frente de heladeria FrioRico','052696514'),
                            (5,'NOTARÍA ÚNICA - TOSAGUA', 'MENDOZA MENDOZA PEDRO EDUARDO','CALLE EUGENIO ESPEJO Y ATAHUALPA','Al lado del Colegio Eugenio Espejo','052330437');
/*
    INSERT IN REGISTRO_LEGAL TABLE
*/
INSERT INTO registro_legal VALUES   (1,1,1,'2019/08/19','142235'),
                                    (2,2,2,'2019/12/19','143643'),
                                    (3,3,3,'2018/02/05','142645'),
                                    (4,4,4,'2016/10/21','142456'),
                                    (5,5,5,'2017/08/15','142435'),
                                    (6,6,1,'2018/08/20','142321'),
                                    (7,7,2,'2015/12/13','142692'),
                                    (8,8,3,'2014/05/19','123456');


/*
    INSERT IN CONSTRUCCION TABLE
*/
INSERT INTO construccion VALUES (1, 1,'10m', '10m', '20m', '20m', '200m²'),
                                (2, 1,'8m', '8m', '14m', '14m', '112m²'),
                                (3, 2,'40m', '40m', '50m', '50m', '2000m²'),
                                (4, 2,'30m', '30m', '40m', '40m', '1200m²'),
                                (5, 3,'10m', '10m', '20m', '20m', '200m²'),
                                (6, 4,'20m', '20m', '30m', '30m', '600m²'),
                                (7, 4,'10m', '10m', '20m', '20m', '200m²'),
                                (8, 5,'10m', '10m', '20m', '20m', '200m²'),
                                (9, 6,'10m', '10m', '20m', '20m', '200m²'),
                                (10, 7,'50m', '50m', '60m', '60m', '3000m²'),
                                (11, 7,'30m', '30m', '30m', '30m', '900m²'),
                                (12, 8,'10m', '10m', '20m', '20m', '200m²');

/*
    INSERT IN FICHA_SERVICIO_BASICO
*/
INSERT INTO ficha_servicio_basico VALUES    (1,1),
                                            (2,1),
                                            (3,1),
                                            (4,1),
                                            (5,1),
                                            (6,1),
                                            (7,1),
                                            (1,2),
                                            (3,2),
                                            (4,2),
                                            (5,2),
                                            (6,2),
                                            (7,2),
                                            (1,3),
                                            (2,3),
                                            (3,3),
                                            (4,3),
                                            (5,3),
                                            (6,3),
                                            (7,3),
                                            (1,4),
                                            (2,4),
                                            (3,4),
                                            (4,4),
                                            (5,4),
                                            (6,4),
                                            (7,4),
                                            (1,5),
                                            (2,5),
                                            (3,5),
                                            (4,5),
                                            (5,5),
                                            (6,5),
                                            (7,5),
                                            (1,6),
                                            (3,6),
                                            (4,6),
                                            (5,6),
                                            (6,6),
                                            (7,6),
                                            (1,7),
                                            (2,7),
                                            (3,7),
                                            (4,7),
                                            (5,7),
                                            (6,7),
                                            (7,7),
                                            (1,8),
                                            (2,8),
                                            (3,8),
                                            (4,8),
                                            (5,8),
                                            (6,8),
                                            (7,8);



/*
    INSERT IN FICHA_INSTALACION TABLE
*/
INSERT INTO ficha_instalacion VALUES    (1, 1),
                                        (3, 1),
                                        (1, 2),
                                        (3, 2),
                                        (4, 2),
                                        (5, 2),
                                        (4, 3),
                                        (1, 4),
                                        (3, 4),
                                        (4, 4),
                                        (4, 5),
                                        (4, 6),
                                        (1, 7),
                                        (3, 7),
                                        (4, 7),
                                        (5, 7),
                                        (4, 8);


/*
    INSERT IN AVALUO_CATASTRAL TABLE
*/
INSERT INTO avaluo_catastral VALUES (1,1,10.000, 3.000, 2.000, 15.000, 1.50, 2.50, 3.75, 7.75),
                                    (2,2,30.000, 5.000, 4.000, 39.000, 0.75, 1.50, 5.75, 8.00),
                                    (3,3,8.000, 4.000, 1.000, 13.000, 1.50, 2.75, 2.75, 7.00),
                                    (4,4,7.000, 4.000, 1.500, 12.500, 1.50, 1.50, 2.45, 5.45),
                                    (5,5,5.000, 3.000, 2.000, 10.000, 1.50, 2.50, 3.75, 7.75),
                                    (6,6,5.000, 3.000, 2.000, 10.000, 1.50, 2.50, 3.75, 7.75),
                                    (7,7,40.000, 6.000, 3.000, 49.000, 0.85, 1.50, 6.75, 8.83),
                                    (8,8,5.000, 3.000, 2.000, 10.000, 1.50, 2.50, 3.75, 7.75);

/*
    INSERT IN FICHA_PREDIO TABLE
*/                              /*ID_PROPIETARIO, ID_PREDIO, TIPO_PROPIETARIO*/
INSERT INTO ficha_predio VALUES (1,4, 'Propietario'),
                                (2,1, 'Propietario'),
                                (3,2, 'Propietario'),
                                (4,3, 'Propietario'),
                                (5,5, 'Propietario'),
                                (6,6, 'Propietario'),
                                (7,7, 'Propietario'),
                                (8,8, 'Propietario'),
                                (9,4, 'Copropietario');
                                /*ID_PROPIETARIO, ID_PREDIO, TIPO_PROPIETARIO*/


/*
    INSERT IN PREDIO_CATASTRAL TABLE
*/                              
INSERT INTO predio_catastral VALUES (4,4),
                                    (1,1),
                                    (2,2),
                                    (3,3),
                                    (5,5),
                                    (6,6),
                                    (7,7),
                                    (8,8);



/*
    INSERT IN SOLICIUD TABLE 
*/                           --ID_SOLICITUD, ID_CATASTRAL, ID_SERVICIO,ID_PROPIETARIO, TECNICO, ESTADO_SOLICITUD, FECHA_INICIO, FECHA_FINAL, MONTO A PAGAR      
INSERT INTO solicitud VALUES    (1,2,1,3,1,'Finalizado', '2020/01/05', '2020/01/10', '2020/06/10',180),       --t1 = 3, t2 = 3, t3 = 3, t4 = 3, t5 = 3;
                                (2,1,2,2,2,'Finalizado', '2020/01/06', '2020/01/10', '2020/04/15',100),       --t6 = 3, t7 = 3, t8 = 3;
                                (3,3,3,4,3,'Finalizado', '2020/02/10', '2020/02/15', '2020/07/10',160),
                                (4,4,4,1,4,'Finalizado', '2020/02/10', '2020/02/16', '2020/07/16',150),
                                (5,5,5,5,5,'Finalizado', '2020/01/11', '2020/01/16', '2020/06/10',50),
                                (6,6,1,6,1,'Finalizado', '2020/02/10', '2020/02/17', '2020/06/10',120),
                                (7,7,2,7,2,'Finalizado', '2020/03/05', '2020/03/10', '2020/06/11',170),
                                (8,8,3,8,3,'Finalizado', '2020/03/04', '2020/03/10', '2020/05/15',100),
                                
                                (9,2,2,3,2,'Aprobado', '2021/01/05', '2021/01/10', '2021/06/15',170),
                                (10,1,1,2,1,'Aprobado', '2021/01/10', '2021/01/15', '2021/04/12',100),
                                (11,3,4,4,4,'Aprobado', '2021/02/15', '2021/02/20', '2021/07/21',140),
                                (12,4,3,1,3,'Aprobado', '2021/03/05', '2021/03/10', '2021/06/10',120),
                                (13,5,5,5,5,'Aprobado', '2021/04/04', '2021/04/10', '2021/06/15',120),
                                (14,6,5,6,5,'Aprobado', '2021/04/10', '2021/05/15', '2021/06/10',130),
                                (15,7,4,7,4,'Aprobado', '2021/05/03', '2021/05/10', '2021/08/10',100),
                                (16,8,1,7,6,'Aprobado', '2021/05/04', '2021/05/10', '2021/07/05',110),
                                                                
                                (17,2,2,3,7,'Aprobado', '2021/05/15', '2021/05/20', '2021/07/15',160),
                                (18,1,3,2,8,'Aprobado', '2021/05/11', '2021/05/15', '2021/07/10',120),
                                (19,1,1,2,6,'Aprobado', '2021/06/11', '2021/06/15', '2021/07/10',120),
                                (20,1,2,4,7,'Aprobado', '2021/06/05', '2021/06/10', '2021/07/10',120),
                                (21,2,3,3,8,'Aprobado', '2021/06/01', '2021/06/05', '2021/07/20',120),
                                (22,1,1,6,6,'Aprobado', '2021/07/05', '2021/07/15', '2021/08/23',120),
                                (23,4,2,1,7,'Aprobado', '2021/07/09', '2021/07/15', '2021/08/27',120),
                                (24,1,3,2,8,'Aprobado', '2021/07/11', '2021/07/15', '2021/08/15',120),
                                (25,3,5,4,5,'Pendiente', '2021/07/05', default, default,default),
                                (26,4,2,1,2,'Pendiente', '2021/07/08', default, default,default),
                                (27,5,2,5,2,'Pendiente', '2021/08/12', default, default,default),
                                (28,6,3,6,3,'Pendiente', '2021/08/15', default, default,default),
                                (29,7,1,7,1,'Pendiente', '2021/08/25', default, default,default),
                                (30,8,2,8,2,'Pendiente', '2021/08/28', default, default,default),
                                
                                (31,2,3,3,3,'Pendiente', '2021/09/10', default, default,default),
                                (32,1,3,2,3,'Pendiente', '2021/09/18', default, default,default),
                                (33,3,2,4,2,'Pendiente', '2021/09/25', default, default,default),
                                (34,4,1,1,1,'Pendiente', '2021/10/15', default, default,default),
                                (35,5,2,5,2,'Pendiente', '2021/10/25', default, default,default),
                                (36,6,2,6,2,'Pendiente', '2021/11/18', default, default,default);
