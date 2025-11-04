-- ============================================================
-- UFC DATABASE - SCRIPTS DE INSERCIÓN DE DATOS
-- RDBMS: MySQL 8.0
-- ============================================================

USE `ufcdatabase`;

-- ============================================================
-- TABLA: SEDE (15 registros)
-- ============================================================

INSERT INTO SEDE VALUES (1,'T-Mobile Arena','Las Vegas','Nevada','USA',20000,'3780 S Las Vegas Blvd','Arena Cerrada','AEG',2016);
INSERT INTO SEDE VALUES (2,'Madison Square Garden','New York','New York','USA',20789,'4 Pennsylvania Plaza','Arena Cerrada','MSG Sports',1968);
INSERT INTO SEDE VALUES (3,'UFC Apex','Las Vegas','Nevada','USA',1000,'6650 S Torrey Pines Dr','Centro de Entrenamiento','UFC',2019);
INSERT INTO SEDE VALUES (4,'Jeunesse Arena','Rio de Janeiro','Rio de Janeiro','Brasil',18000,'Av. Embaixador Abelardo Bueno','Arena Cerrada','AEG Brasil',2007);
INSERT INTO SEDE VALUES (5,'The O2 Arena','London','England','UK',20000,'Peninsula Square','Arena Cerrada','AEG Europe',2007);
INSERT INTO SEDE VALUES (6,'Etihad Arena','Abu Dhabi','Abu Dhabi','UAE',18000,'Yas Island','Arena Cerrada','Flash Entertainment',2020);
INSERT INTO SEDE VALUES (7,'Scotiabank Arena','Toronto','Ontario','Canada',19800,'40 Bay Street','Arena Cerrada','MLSE',1999);
INSERT INTO SEDE VALUES (8,'Qudos Bank Arena','Sydney','New South Wales','Australia',21000,'Edwin Flack Ave','Arena Cerrada','TEG Live',1999);
INSERT INTO SEDE VALUES (9,'AccorHotels Arena','Paris','Ile-de-France','France',20300,'8 Boulevard de Bercy','Arena Cerrada','ASO',1984);
INSERT INTO SEDE VALUES (10,'Arena CDMX','Ciudad de Mexico','CDMX','Mexico',22300,'Av. de las Granjas 800','Arena Cerrada','OCESA',2012);
INSERT INTO SEDE VALUES (11,'Barclays Center','Brooklyn','New York','USA',19000,'620 Atlantic Ave','Arena Cerrada','Barclays',2012);
INSERT INTO SEDE VALUES (12,'Ginasio do Ibirapuera','Sao Paulo','Sao Paulo','Brasil',11000,'Av. Pedro Álvares Cabral','Gimnasio','Prefeitura SP',1957);
INSERT INTO SEDE VALUES (13,'Saitama Super Arena','Saitama','Saitama','Japan',37000,'8 Shintoshin','Arena Cerrada','Saitama',2000);
INSERT INTO SEDE VALUES (14,'Spark Arena','Auckland','Auckland','New Zealand',12000,'Mahuhu Crescent','Arena Cerrada','Auckland Council',2007);
INSERT INTO SEDE VALUES (15,'AT&T Center','San Antonio','Texas','USA',18500,'One AT&T Center Parkway','Arena Cerrada','Spurs Sports',2002);

-- ============================================================
-- TABLA: DIVISION (9 registros)
-- ============================================================

INSERT INTO DIVISION VALUES (1,'Peso Mosca Femenino',51.71,56.70,'F','Valentina Shevchenko');
INSERT INTO DIVISION VALUES (2,'Peso Gallo Femenino',56.71,61.23,'F','Raquel Pennington');
INSERT INTO DIVISION VALUES (3,'Peso Mosca',56.71,57.15,'M','Alexandre Pantoja');
INSERT INTO DIVISION VALUES (4,'Peso Gallo',57.16,61.23,'M','Merab Dvalishvili');
INSERT INTO DIVISION VALUES (5,'Peso Pluma',61.24,65.77,'M','Ilia Topuria');
INSERT INTO DIVISION VALUES (6,'Peso Ligero',65.78,70.31,'M','Islam Makhachev');
INSERT INTO DIVISION VALUES (7,'Peso Welter',70.32,77.11,'M','Belal Muhammad');
INSERT INTO DIVISION VALUES (8,'Peso Mediano',77.12,83.91,'M','Dricus Du Plessis');
INSERT INTO DIVISION VALUES (9,'Peso Semipesado',83.92,93.00,'M','Alex Pereira');

-- ============================================================
-- TABLA: ARBITRO (15 registros)
-- ============================================================

INSERT INTO ARBITRO VALUES (1,'Herb','Dean','USA',25,'Nevada Athletic Commission',4500,'MMA');
INSERT INTO ARBITRO VALUES (2,'Marc','Goddard','UK',18,'IMMAF',3200,'MMA');
INSERT INTO ARBITRO VALUES (3,'Jason','Herzog','USA',15,'Nevada Athletic Commission',2800,'MMA');
INSERT INTO ARBITRO VALUES (4,'Mike','Beltran','USA',20,'California State Athletic Commission',3500,'MMA');
INSERT INTO ARBITRO VALUES (5,'Dan','Miragliotta','USA',22,'New Jersey State Athletic Commission',3800,'MMA');
INSERT INTO ARBITRO VALUES (6,'Keith','Peterson','USA',16,'Nevada Athletic Commission',2900,'MMA');
INSERT INTO ARBITRO VALUES (7,'Mark','Smith','USA',14,'Nevada Athletic Commission',2600,'MMA');
INSERT INTO ARBITRO VALUES (8,'Chris','Tognoni','USA',19,'Nevada Athletic Commission',3300,'MMA');
INSERT INTO ARBITRO VALUES (9,'Gary','Copeland','USA',17,'Nevada Athletic Commission',3000,'MMA');
INSERT INTO ARBITRO VALUES (10,'Kevin','Sataki','USA',12,'Nevada Athletic Commission',2200,'MMA');
INSERT INTO ARBITRO VALUES (11,'Jerin','Valel','USA',10,'Nevada Athletic Commission',1800,'MMA');
INSERT INTO ARBITRO VALUES (12,'Frank','Trigg','USA',13,'California State Athletic Commission',2400,'MMA');
INSERT INTO ARBITRO VALUES (13,'Yves','Lavigne','Canada',24,'CACS',4200,'MMA');
INSERT INTO ARBITRO VALUES (14,'Leon','Roberts','USA',11,'Nevada Athletic Commission',2000,'MMA');
INSERT INTO ARBITRO VALUES (15,'Andrew','Glenn','USA',9,'Nevada Athletic Commission',1600,'MMA');

-- ============================================================
-- TABLA: RANKING (45 registros)
-- ============================================================

INSERT INTO RANKING VALUES (1,1,'2024-10-01',1500,1);
INSERT INTO RANKING VALUES (2,2,'2024-10-01',1420,1);
INSERT INTO RANKING VALUES (3,3,'2024-10-01',1350,1);
INSERT INTO RANKING VALUES (4,4,'2024-10-01',1280,1);
INSERT INTO RANKING VALUES (5,5,'2024-10-01',1210,1);
INSERT INTO RANKING VALUES (6,1,'2024-10-01',1480,2);
INSERT INTO RANKING VALUES (7,2,'2024-10-01',1410,2);
INSERT INTO RANKING VALUES (8,3,'2024-10-01',1340,2);
INSERT INTO RANKING VALUES (9,4,'2024-10-01',1270,2);
INSERT INTO RANKING VALUES (10,5,'2024-10-01',1200,2);
INSERT INTO RANKING VALUES (11,1,'2024-10-01',1550,3);
INSERT INTO RANKING VALUES (12,2,'2024-10-01',1480,3);
INSERT INTO RANKING VALUES (13,3,'2024-10-01',1410,3);
INSERT INTO RANKING VALUES (14,4,'2024-10-01',1340,3);
INSERT INTO RANKING VALUES (15,5,'2024-10-01',1270,3);
INSERT INTO RANKING VALUES (16,1,'2024-10-01',1600,4);
INSERT INTO RANKING VALUES (17,2,'2024-10-01',1530,4);
INSERT INTO RANKING VALUES (18,3,'2024-10-01',1460,4);
INSERT INTO RANKING VALUES (19,4,'2024-10-01',1390,4);
INSERT INTO RANKING VALUES (20,5,'2024-10-01',1320,4);
INSERT INTO RANKING VALUES (21,1,'2024-10-01',1650,5);
INSERT INTO RANKING VALUES (22,2,'2024-10-01',1580,5);
INSERT INTO RANKING VALUES (23,3,'2024-10-01',1510,5);
INSERT INTO RANKING VALUES (24,4,'2024-10-01',1440,5);
INSERT INTO RANKING VALUES (25,5,'2024-10-01',1370,5);
INSERT INTO RANKING VALUES (26,1,'2024-10-01',1700,6);
INSERT INTO RANKING VALUES (27,2,'2024-10-01',1630,6);
INSERT INTO RANKING VALUES (28,3,'2024-10-01',1560,6);
INSERT INTO RANKING VALUES (29,4,'2024-10-01',1490,6);
INSERT INTO RANKING VALUES (30,5,'2024-10-01',1420,6);
INSERT INTO RANKING VALUES (31,1,'2024-10-01',1750,7);
INSERT INTO RANKING VALUES (32,2,'2024-10-01',1680,7);
INSERT INTO RANKING VALUES (33,3,'2024-10-01',1610,7);
INSERT INTO RANKING VALUES (34,4,'2024-10-01',1540,7);
INSERT INTO RANKING VALUES (35,5,'2024-10-01',1470,7);
INSERT INTO RANKING VALUES (36,1,'2024-10-01',1800,8);
INSERT INTO RANKING VALUES (37,2,'2024-10-01',1730,8);
INSERT INTO RANKING VALUES (38,3,'2024-10-01',1660,8);
INSERT INTO RANKING VALUES (39,4,'2024-10-01',1590,8);
INSERT INTO RANKING VALUES (40,5,'2024-10-01',1520,8);
INSERT INTO RANKING VALUES (41,1,'2024-10-01',1850,9);
INSERT INTO RANKING VALUES (42,2,'2024-10-01',1780,9);
INSERT INTO RANKING VALUES (43,3,'2024-10-01',1710,9);
INSERT INTO RANKING VALUES (44,4,'2024-10-01',1640,9);
INSERT INTO RANKING VALUES (45,5,'2024-10-01',1570,9);

-- ============================================================
-- TABLA: EVENTO (15 registros)
-- ============================================================

INSERT INTO EVENTO VALUES (301,'UFC 307: Pereira vs Rountree Jr','2024-10-05','PPV','22:00:00',18500,8500000.00,'poster_ufc307.jpg',1);
INSERT INTO EVENTO VALUES (302,'UFC 306: Noche UFC','2024-09-14','PPV','22:00:00',16024,20000000.00,'poster_ufc306.jpg',10);
INSERT INTO EVENTO VALUES (303,'UFC 305: Du Plessis vs Adesanya','2024-08-17','PPV','22:00:00',19107,7200000.00,'poster_ufc305.jpg',8);
INSERT INTO EVENTO VALUES (304,'UFC 304: Edwards vs Muhammad 2','2024-07-27','PPV','22:00:00',19087,6800000.00,'poster_ufc304.jpg',5);
INSERT INTO EVENTO VALUES (305,'UFC 303: Pereira vs Prochazka 2','2024-06-29','PPV','22:00:00',19107,9400000.00,'poster_ufc303.jpg',1);
INSERT INTO EVENTO VALUES (306,'UFC 302: Makhachev vs Poirier','2024-06-01','PPV','22:00:00',18124,8100000.00,'poster_ufc302.jpg',11);
INSERT INTO EVENTO VALUES (307,'UFC 301: Pantoja vs Erceg','2024-05-04','PPV','21:00:00',13450,4500000.00,'poster_ufc301.jpg',4);
INSERT INTO EVENTO VALUES (308,'UFC 300: Pereira vs Hill','2024-04-13','PPV','22:00:00',19107,15000000.00,'poster_ufc300.jpg',1);
INSERT INTO EVENTO VALUES (309,'UFC 299: O Malley vs Vera 2','2024-03-09','PPV','22:00:00',16207,7300000.00,'poster_ufc299.jpg',3);
INSERT INTO EVENTO VALUES (310,'UFC 298: Volkanovski vs Topuria','2024-02-17','PPV','22:00:00',17642,9500000.00,'poster_ufc298.jpg',7);
INSERT INTO EVENTO VALUES (311,'UFC 297: Strickland vs Du Plessis','2024-01-20','PPV','22:00:00',18174,6200000.00,'poster_ufc297.jpg',7);
INSERT INTO EVENTO VALUES (312,'UFC 296: Edwards vs Covington','2023-12-16','PPV','22:00:00',19107,7800000.00,'poster_ufc296.jpg',1);
INSERT INTO EVENTO VALUES (313,'UFC 295: Prochazka vs Pereira','2023-11-11','PPV','22:00:00',19067,8900000.00,'poster_ufc295.jpg',2);
INSERT INTO EVENTO VALUES (314,'UFC 294: Makhachev vs Volkanovski 2','2023-10-21','PPV','18:00:00',18053,9200000.00,'poster_ufc294.jpg',6);
INSERT INTO EVENTO VALUES (315,'UFC 293: Adesanya vs Strickland','2023-09-09','PPV','21:00:00',17546,6500000.00,'poster_ufc293.jpg',8);

-- ============================================================
-- TABLA: PELEADOR (45 registros)
-- ============================================================

INSERT INTO PELEADOR VALUES (1001,'Valentina','Shevchenko','Bullet','1988-03-07','Las Vegas','Kyrgyzstan',165.00,56.70,168.00,'Muay Thai','Ortodoxa','2003-04-02','23',3,0,1,'Activo',36,1);
INSERT INTO PELEADOR VALUES (1002,'Alexa','Grasso','La Mejor','1993-08-09','Guadalajara','Mexico',165.00,56.70,165.00,'Boxeo','Ortodoxa','2012-10-26','16',4,0,0,'Activo',31,1);
INSERT INTO PELEADOR VALUES (1003,'Manon','Fiorot','The Beast','1990-02-17','Nice','France',170.00,56.70,172.00,'Kickboxing','Ortodoxa','2018-06-16','11',1,0,0,'Activo',34,1);
INSERT INTO PELEADOR VALUES (1004,'Erin','Blanchfield',NULL,'1999-05-04','Elmwood Park','USA',168.00,56.70,170.00,'Jiu-Jitsu','Ortodoxa','2019-02-16','12',1,0,0,'Activo',25,1);
INSERT INTO PELEADOR VALUES (1005,'Viviane','Araujo','Vivi','1987-01-25','Brasilia','Brasil',165.00,56.70,165.00,'Muay Thai','Ortodoxa','2013-11-09','12',5,0,0,'Activo',37,1);
INSERT INTO PELEADOR VALUES (2001,'Raquel','Pennington','Rocky','1988-09-05','Colorado Springs','USA',170.00,61.23,173.00,'Boxeo','Ortodoxa','2013-03-01','16',7,0,0,'Activo',36,2);
INSERT INTO PELEADOR VALUES (2002,'Julianna','Pena','The Venezuelan Vixen','1989-08-19','Spokane','USA',168.00,61.23,168.00,'Grappling','Zurda','2009-06-13','12',5,0,0,'Activo',35,2);
INSERT INTO PELEADOR VALUES (2003,'Ketlen','Vieira','Fenomeno','1991-03-27','Sao Paulo','Brasil',173.00,61.23,175.00,'Jiu-Jitsu','Ortodoxa','2012-02-04','14',3,0,0,'Activo',33,2);
INSERT INTO PELEADOR VALUES (2004,'Mayra','Bueno Silva','Sheetara','1991-07-07','Rio de Janeiro','Brasil',173.00,61.23,178.00,'Jiu-Jitsu','Ortodoxa','2015-05-23','10',3,1,0,'Activo',33,2);
INSERT INTO PELEADOR VALUES (2005,'Irene','Aldana','La Borrada','1988-03-26','Guadalajara','Mexico',175.00,61.23,175.00,'Boxeo','Ortodoxa','2012-02-24','15',7,0,0,'Activo',36,2);
INSERT INTO PELEADOR VALUES (3001,'Alexandre','Pantoja','The Cannibal','1990-04-16','Rio de Janeiro','Brasil',168.00,57.15,170.00,'Jiu-Jitsu','Ortodoxa','2011-03-19','28',5,0,0,'Activo',34,3);
INSERT INTO PELEADOR VALUES (3002,'Brandon','Royval','Raw Dawg','1992-08-06','Denver','USA',173.00,57.15,175.00,'Jiu-Jitsu','Zurda','2016-02-06','16',7,0,0,'Activo',32,3);
INSERT INTO PELEADOR VALUES (3003,'Brandon','Moreno','The Assassin Baby','1993-12-07','Tijuana','Mexico',170.00,57.15,178.00,'Boxeo','Zurda','2011-04-30','21',7,2,0,'Activo',30,3);
INSERT INTO PELEADOR VALUES (3004,'Kai','Kara-France','Don\'t Blink','1993-03-26','Auckland','New Zealand',168.00,57.15,170.00,'Kickboxing','Ortodoxa','2010-11-06','24',11,0,0,'Activo',31,3);
INSERT INTO PELEADOR VALUES (3005,'Amir','Albazi','The Prince','1993-09-13','Stockholm','Sweden',173.00,57.15,175.00,'Grappling','Ortodoxa','2015-11-07','17',1,0,0,'Activo',31,3);
INSERT INTO PELEADOR VALUES (4001,'Merab','Dvalishvili','The Machine','1991-01-10','Las Vegas','Georgia',168.00,61.23,170.00,'Wrestling','Ortodoxa','2014-04-05','17',4,0,0,'Activo',33,4);
INSERT INTO PELEADOR VALUES (4002,'Sean','O\'Malley','Sugar','1994-10-24','Phoenix','USA',180.00,61.23,183.00,'Kickboxing','Ambidiestra','2015-02-21','18',1,0,1,'Activo',30,4);
INSERT INTO PELEADOR VALUES (4003,'Cory','Sandhagen','The Sandman','1992-04-20','Denver','USA',180.00,61.23,183.00,'Kickboxing','Zurda','2015-01-31','17',4,0,0,'Activo',32,4);
INSERT INTO PELEADOR VALUES (4004,'Petr','Yan','No Mercy','1993-02-11','Dudinka','Russia',170.00,61.23,168.00,'Boxeo','Ortodoxa','2014-06-07','17',4,0,0,'Activo',31,4);
INSERT INTO PELEADOR VALUES (4005,'Song','Yadong',NULL,'1997-12-02','Bengbu','China',173.00,61.23,173.00,'Sanda','Ortodoxa','2015-02-28','22',7,1,0,'Activo',26,4);
INSERT INTO PELEADOR VALUES (5001,'Ilia','Topuria','El Matador','1997-01-21','Alicante','Spain-Georgia',170.00,65.77,175.00,'Wrestling','Zurda','2015-03-21','15',0,0,0,'Activo',27,5);
INSERT INTO PELEADOR VALUES (5002,'Alexander','Volkanovski','The Great','1988-09-29','Sydney','Australia',168.00,65.77,183.00,'Wrestling','Ortodoxa','2012-08-11','26',3,0,0,'Activo',36,5);
INSERT INTO PELEADOR VALUES (5003,'Max','Holloway','Blessed','1991-12-04','Honolulu','USA',180.00,65.77,175.00,'Boxeo','Ortodoxa','2010-02-05','26',7,0,0,'Activo',32,5);
INSERT INTO PELEADOR VALUES (5004,'Brian','Ortega','T-City','1991-02-21','Los Angeles','USA',178.00,65.77,178.00,'Jiu-Jitsu','Zurda','2010-08-14','16',3,0,1,'Activo',33,5);
INSERT INTO PELEADOR VALUES (5005,'Yair','Rodriguez','El Pantera','1992-10-06','Chihuahua','Mexico',180.00,65.77,178.00,'Taekwondo','Ambidiestra','2012-10-19','16',4,0,0,'Activo',32,5);
INSERT INTO PELEADOR VALUES (6001,'Islam','Makhachev',NULL,'1991-10-27','Makhachkala','Russia',178.00,70.31,178.00,'Wrestling','Zurda','2010-05-29','26',1,0,0,'Activo',33,6);
INSERT INTO PELEADOR VALUES (6002,'Charles','Oliveira','Do Bronx','1989-10-17','Sao Paulo','Brasil',178.00,70.31,188.00,'Jiu-Jitsu','Ortodoxa','2008-03-08','34',10,0,1,'Activo',35,6);
INSERT INTO PELEADOR VALUES (6003,'Justin','Gaethje','The Highlight','1988-11-14','Phoenix','USA',180.00,70.31,178.00,'Wrestling','Ortodoxa','2011-02-11','25',5,0,0,'Activo',36,6);
INSERT INTO PELEADOR VALUES (6004,'Dustin','Poirier','The Diamond','1989-01-19','Lafayette','USA',175.00,70.31,183.00,'Boxeo','Zurda','2009-02-07','30',8,1,1,'Activo',35,6);
INSERT INTO PELEADOR VALUES (6005,'Michael','Chandler','Iron','1986-04-24','High Ridge','USA',173.00,70.31,178.00,'Wrestling','Ortodoxa','2009-03-28','23',8,0,0,'Activo',38,6);
INSERT INTO PELEADOR VALUES (7001,'Belal','Muhammad','Remember The Name','1988-07-09','Chicago','USA',180.00,77.11,183.00,'Wrestling','Ortodoxa','2012-05-04','24',3,1,0,'Activo',36,7);
INSERT INTO PELEADOR VALUES (7002,'Leon','Edwards','Rocky','1991-08-25','Birmingham','UK',183.00,77.11,188.00,'Kickboxing','Ortodoxa','2011-07-16','22',3,0,1,'Activo',33,7);
INSERT INTO PELEADOR VALUES (7003,'Kamaru','Usman','The Nigerian Nightmare','1987-05-11','Dallas','USA',183.00,77.11,193.00,'Wrestling','Ortodoxa','2012-11-17','20',4,0,0,'Activo',37,7);
INSERT INTO PELEADOR VALUES (7004,'Colby','Covington','Chaos','1988-02-22','Miami','USA',180.00,77.11,183.00,'Wrestling','Ortodoxa','2012-02-04','17',4,0,0,'Activo',36,7);
INSERT INTO PELEADOR VALUES (7005,'Shavkat','Rakhmonov','Nomad','1994-10-23','Tashkent','Kazakhstan',183.00,77.11,191.00,'Combat Sambo','Ortodoxa','2014-11-22','18',0,0,0,'Activo',29,7);
INSERT INTO PELEADOR VALUES (8001,'Dricus','Du Plessis','Stillknocks','1994-01-14','Pretoria','South Africa',185.00,83.91,193.00,'Kickboxing','Ortodoxa','2013-08-03','22',2,0,0,'Activo',30,8);
INSERT INTO PELEADOR VALUES (8002,'Israel','Adesanya','The Last Stylebender','1989-07-22','Auckland','Nigeria-NZ',193.00,83.91,203.00,'Kickboxing','Ortodoxa','2012-05-19','24',3,0,0,'Activo',35,8);
INSERT INTO PELEADOR VALUES (8003,'Sean','Strickland','Tarzan','1991-02-27','Corona','USA',185.00,83.91,193.00,'Kickboxing','Ortodoxa','2008-10-31','29',6,0,0,'Activo',33,8);
INSERT INTO PELEADOR VALUES (8004,'Robert','Whittaker','The Reaper','1990-12-20','Sydney','Australia',183.00,83.91,188.00,'Karate','Ortodoxa','2009-12-12','26',7,0,0,'Activo',33,8);
INSERT INTO PELEADOR VALUES (8005,'Khamzat','Chimaev','Borz','1994-05-01','Stockholm','Chechnya',188.00,83.91,193.00,'Wrestling','Ortodoxa','2018-05-19','13',0,0,0,'Activo',30,8);
INSERT INTO PELEADOR VALUES (9001,'Alex','Pereira','Poatan','1987-07-07','Sao Paulo','Brasil',193.00,93.00,201.00,'Kickboxing','Zurda','2015-11-13','11',2,0,0,'Activo',37,9);
INSERT INTO PELEADOR VALUES (9002,'Jamahal','Hill','Sweet Dreams','1991-05-19','Chicago','USA',193.00,93.00,203.00,'Kickboxing','Ortodoxa','2017-09-30','12',1,0,1,'Activo',33,9);
INSERT INTO PELEADOR VALUES (9003,'Jiri','Prochazka','BJP','1992-10-14','Brno','Czech Republic',193.00,93.00,203.00,'Muay Thai','Ortodoxa','2012-11-03','30',4,1,0,'Activo',32,9);
INSERT INTO PELEADOR VALUES (9004,'Jan','Blachowicz','Prince of Cieszyn','1983-02-24','Cieszyn','Poland',188.00,93.00,198.00,'Kickboxing','Ortodoxa','2007-09-22','29',11,0,0,'Activo',41,9);
INSERT INTO PELEADOR VALUES (9005,'Magomed','Ankalaev',NULL,'1992-06-02','Makhachkala','Russia',191.00,93.00,201.00,'Wrestling','Ortodoxa','2014-04-05','19',1,1,0,'Activo',32,9);

-- ============================================================
-- TABLA: ENTRENADOR (15 registros)
-- ============================================================

INSERT INTO ENTRENADOR VALUES (1,2015,'City Kickboxing','Auckland','MMA','Eugene','Bareman',8002);
INSERT INTO ENTRENADOR VALUES (2,2008,'American Top Team','Coconut Creek','MMA','Mike','Brown',3001);
INSERT INTO ENTRENADOR VALUES (3,2012,'Gracie Fighter','Los Angeles','Jiu-Jitsu','Rener','Gracie',5004);
INSERT INTO ENTRENADOR VALUES (4,2010,'Kings MMA','Huntington Beach','Muay Thai','Rafael','Cordeiro',7003);
INSERT INTO ENTRENADOR VALUES (5,2013,'Sanford MMA','Deerfield Beach','Wrestling','Henri','Hooft',6001);
INSERT INTO ENTRENADOR VALUES (6,2009,'Tiger Muay Thai','Phuket','Muay Thai','George','Hickman',4004);
INSERT INTO ENTRENADOR VALUES (7,2011,'Elevation Fight Team','Denver','Kickboxing','Leister','Bowling',4003);
INSERT INTO ENTRENADOR VALUES (8,2014,'Roufusport','Milwaukee','Kickboxing','Duke','Roufus',7001);
INSERT INTO ENTRENADOR VALUES (9,2016,'Team Alpha Male','Sacramento','Wrestling','Urijah','Faber',4005);
INSERT INTO ENTRENADOR VALUES (10,2007,'Jackson-Wink MMA','Albuquerque','MMA','Greg','Jackson',2005);
INSERT INTO ENTRENADOR VALUES (11,2018,'Glover Teixeira Team','Sao Paulo','Jiu-Jitsu','Glover','Teixeira',9001);
INSERT INTO ENTRENADOR VALUES (12,2015,'Climent Club','Alicante','Wrestling','Jorge','Climent',5001);
INSERT INTO ENTRENADOR VALUES (13,2013,'Chute Boxe Diego Lima','Sao Paulo','Muay Thai','Diego','Lima',6002);
INSERT INTO ENTRENADOR VALUES (14,2017,'Allstars Training Center','Stockholm','MMA','Andreas','Michael',8005);
INSERT INTO ENTRENADOR VALUES (15,2010,'MMA Lab','Phoenix','Kickboxing','John','Crouch',4002);

-- ============================================================
-- TABLA: PATROCINADOR (15 registros)
-- ============================================================

INSERT INTO PATROCINADOR VALUES (101,2015,'Team Monster','Las Vegas','Monster Energy',4002);
INSERT INTO PATROCINADOR VALUES (102,2018,'Team Reebok','Boston','Reebok',7002);
INSERT INTO PATROCINADOR VALUES (103,2016,'Team Venum','Paris','Venum',5001);
INSERT INTO PATROCINADOR VALUES (104,2019,'Team Modelo','Ciudad de Mexico','Modelo',3003);
INSERT INTO PATROCINADOR VALUES (105,2020,'Team Crypto','Singapore','Crypto.com',8002);
INSERT INTO PATROCINADOR VALUES (106,2017,'Team Toyo Tires','Osaka','Toyo Tires',6001);
INSERT INTO PATROCINADOR VALUES (107,2021,'Team Harley-Davidson','Milwaukee','Harley-Davidson',7001);
INSERT INTO PATROCINADOR VALUES (108,2015,'Team P3','Chicago','P3 Protein',9001);
INSERT INTO PATROCINADOR VALUES (109,2019,'Team Howler Head','Louisville','Howler Head Whiskey',5003);
INSERT INTO PATROCINADOR VALUES (110,2016,'Team DraftKings','Boston','DraftKings',6002);
INSERT INTO PATROCINADOR VALUES (111,2018,'Team MetroPCS','Dallas','MetroPCS',4001);
INSERT INTO PATROCINADOR VALUES (112,2020,'Team Celsius','Boca Raton','Celsius Energy',8001);
INSERT INTO PATROCINADOR VALUES (113,2017,'Team BodyArmor','New York','BodyArmor',7005);
INSERT INTO PATROCINADOR VALUES (114,2021,'Team Proper 12','Dublin','Proper Twelve Whiskey',6004);
INSERT INTO PATROCINADOR VALUES (115,2019,'Team Xbox','Redmond','Xbox',3001);

-- ============================================================
-- TABLA: EQUIPO_MEDICO (15 registros)
-- ============================================================

INSERT INTO EQUIPO_MEDICO VALUES (201,2015,'UFC Medical Team Alpha','Las Vegas','Jeffrey','Davidson','Traumatologia',9001);
INSERT INTO EQUIPO_MEDICO VALUES (202,2016,'UFC Medical Team Bravo','Las Vegas','James','Stover','Neurologia',8002);
INSERT INTO EQUIPO_MEDICO VALUES (203,2017,'UFC Medical Team Charlie','Las Vegas','Anthony','Ruggeroli','Ortopedia',7001);
INSERT INTO EQUIPO_MEDICO VALUES (204,2018,'UFC Medical Team Delta','Las Vegas','David','Abbasi','Medicina Deportiva',6001);
INSERT INTO EQUIPO_MEDICO VALUES (205,2019,'International Medical Team 1','London','Richard','Foster','Cirugia',5001);
INSERT INTO EQUIPO_MEDICO VALUES (206,2020,'International Medical Team 2','Sydney','Michael','Zhang','Fisioterapia',8001);
INSERT INTO EQUIPO_MEDICO VALUES (207,2015,'International Medical Team 3','Rio de Janeiro','Carlos','Santos','Traumatologia',3001);
INSERT INTO EQUIPO_MEDICO VALUES (208,2021,'International Medical Team 4','Toronto','Sarah','Williams','Medicina General',4001);
INSERT INTO EQUIPO_MEDICO VALUES (209,2016,'International Medical Team 5','Abu Dhabi','Ahmed','Al-Mansouri','Ortopedia',7002);
INSERT INTO EQUIPO_MEDICO VALUES (210,2022,'Regional Medical Team 1','Paris','Jean-Pierre','Dubois','Neurologia',1001);
INSERT INTO EQUIPO_MEDICO VALUES (211,2017,'Regional Medical Team 2','Mexico City','Roberto','Hernandez','Medicina Deportiva',3003);
INSERT INTO EQUIPO_MEDICO VALUES (212,2018,'Regional Medical Team 3','Sao Paulo','Paulo','Silva','Fisioterapia',6002);
INSERT INTO EQUIPO_MEDICO VALUES (213,2019,'Regional Medical Team 4','Tokyo','Hiroshi','Tanaka','Traumatologia',4002);
INSERT INTO EQUIPO_MEDICO VALUES (214,2020,'Regional Medical Team 5','Auckland','David','Mitchell','Cirugia',3004);
INSERT INTO EQUIPO_MEDICO VALUES (215,2021,'Regional Medical Team 6','Stockholm','Erik','Andersson','Ortopedia',8005);

-- ============================================================
-- TABLA: PELEA (20 registros)
-- ============================================================

INSERT INTO PELEA VALUES (501,'S',5,5,'Decision Unanime','00:25:00',9001,301,1);
INSERT INTO PELEA VALUES (502,'S',5,3,'KO','00:04:35',4002,309,2);
INSERT INTO PELEA VALUES (503,'S',5,2,'KO','00:03:32',5001,310,3);
INSERT INTO PELEA VALUES (504,'S',5,5,'Decision Unanime','00:25:00',7001,304,4);
INSERT INTO PELEA VALUES (505,'S',5,4,'Sumision','00:02:18',6001,306,5);
INSERT INTO PELEA VALUES (506,'S',5,5,'Decision Dividida','00:25:00',8001,311,6);
INSERT INTO PELEA VALUES (507,'S',5,2,'KO','00:04:08',9001,313,7);
INSERT INTO PELEA VALUES (508,'S',5,5,'Decision Unanime','00:25:00',8003,315,8);
INSERT INTO PELEA VALUES (509,'S',5,2,'KO','00:01:18',9001,308,1);
INSERT INTO PELEA VALUES (510,'S',5,5,'Decision Unanime','00:25:00',7002,312,2);
INSERT INTO PELEA VALUES (511,'N',3,3,'Decision Unanime','00:15:00',3001,307,3);
INSERT INTO PELEA VALUES (512,'N',3,2,'Sumision','00:04:26',6002,302,4);
INSERT INTO PELEA VALUES (513,'N',3,3,'Decision Unanime','00:15:00',5003,305,5);
INSERT INTO PELEA VALUES (514,'N',3,1,'KO','00:02:45',8002,303,6);
INSERT INTO PELEA VALUES (515,'N',3,3,'Decision Unanime','00:15:00',4001,301,7);
INSERT INTO PELEA VALUES (516,'N',3,2,'Sumision','00:03:12',7005,304,8);
INSERT INTO PELEA VALUES (517,'N',3,3,'Decision Dividida','00:15:00',1001,306,9);
INSERT INTO PELEA VALUES (518,'N',3,3,'Decision Unanime','00:15:00',2001,309,10);
INSERT INTO PELEA VALUES (519,'N',3,1,'TKO','00:01:58',6004,302,11);
INSERT INTO PELEA VALUES (520,'N',3,3,'Decision Unanime','00:15:00',9003,311,12);

-- ============================================================
-- TABLA: JUEZ (15 registros - insertar con NULL primero)
-- ============================================================

INSERT INTO JUEZ VALUES (1,'Sal','D Amato','USA',20,'Nevada Athletic Commission',3500,'Equilibrado',NULL);
INSERT INTO JUEZ VALUES (2,'Derek','Cleary','USA',18,'Nevada Athletic Commission',3200,'Pro-Grappler',NULL);
INSERT INTO JUEZ VALUES (3,'Mike','Bell','USA',22,'Nevada Athletic Commission',3800,'Pro-Striker',NULL);
INSERT INTO JUEZ VALUES (4,'Chris','Lee','USA',15,'Nevada Athletic Commission',2800,'Conservador',NULL);
INSERT INTO JUEZ VALUES (5,'Dave','Tirelli','USA',19,'Nevada Athletic Commission',3400,'Equilibrado',NULL);
INSERT INTO JUEZ VALUES (6,'Douglas','Crosby','USA',21,'Nevada Athletic Commission',3700,'Pro-Grappler',NULL);
INSERT INTO JUEZ VALUES (7,'Junichiro','Kamijo','Japan',16,'JSAC',2900,'Pro-Striker',NULL);
INSERT INTO JUEZ VALUES (8,'Ben','Cartlidge','UK',14,'IMMAF',2600,'Equilibrado',NULL);
INSERT INTO JUEZ VALUES (9,'Ron','McCarthy','USA',17,'Nevada Athletic Commission',3100,'Pro-Striker',NULL);
INSERT INTO JUEZ VALUES (10,'Eric','Colon','USA',13,'Nevada Athletic Commission',2500,'Equilibrado',NULL);
INSERT INTO JUEZ VALUES (11,'Marcos','Rosales','USA',12,'Nevada Athletic Commission',2300,'Pro-Grappler',NULL);
INSERT INTO JUEZ VALUES (12,'Sal','Lejia','USA',10,'Nevada Athletic Commission',1900,'Conservador',NULL);
INSERT INTO JUEZ VALUES (13,'Tony','Weeks','USA',25,'Nevada Athletic Commission',4200,'Equilibrado',NULL);
INSERT INTO JUEZ VALUES (14,'David','Lethaby','UK',11,'IMMAF',2100,'Pro-Striker',NULL);
INSERT INTO JUEZ VALUES (15,'Clemens','Werner','Germany',9,'GEMMAF',1800,'Equilibrado',NULL);

-- ============================================================
-- TABLA: ESTADISTICA (20 registros)
-- ============================================================

INSERT INTO ESTADISTICA VALUES (1,'Victoria Rojo',142,98,45,32,0,0,0,0,50,47,'Decision Unanime',501,1);
INSERT INTO ESTADISTICA VALUES (2,'Victoria Rojo',78,45,28,15,0,0,0,0,30,27,'KO',502,2);
INSERT INTO ESTADISTICA VALUES (3,'Victoria Rojo',54,32,22,12,1,0,45,0,30,27,'KO',503,3);
INSERT INTO ESTADISTICA VALUES (4,'Victoria Rojo',156,112,52,38,2,1,180,45,49,46,'Decision Unanime',504,1);
INSERT INTO ESTADISTICA VALUES (5,'Victoria Rojo',89,67,34,28,4,1,320,60,40,37,'Sumision',505,4);
INSERT INTO ESTADISTICA VALUES (6,'Victoria Rojo',134,121,48,42,1,2,90,150,48,47,'Decision Dividida',506,5);
INSERT INTO ESTADISTICA VALUES (7,'Victoria Rojo',45,28,18,11,0,0,0,0,30,28,'KO',507,6);
INSERT INTO ESTADISTICA VALUES (8,'Victoria Rojo',145,132,51,48,0,0,0,0,48,47,'Decision Unanime',508,2);
INSERT INTO ESTADISTICA VALUES (9,'Victoria Rojo',32,18,14,8,0,0,0,0,30,27,'KO',509,7);
INSERT INTO ESTADISTICA VALUES (10,'Victoria Rojo',148,128,49,44,0,0,0,0,49,46,'Decision Unanime',510,3);
INSERT INTO ESTADISTICA VALUES (11,'Victoria Rojo',98,76,38,28,3,2,240,120,30,27,'Decision Unanime',511,8);
INSERT INTO ESTADISTICA VALUES (12,'Victoria Rojo',67,52,28,22,3,1,180,45,30,27,'Sumision',512,9);
INSERT INTO ESTADISTICA VALUES (13,'Victoria Azul',87,92,32,36,1,2,60,120,28,29,'Decision Unanime',513,10);
INSERT INTO ESTADISTICA VALUES (14,'Victoria Rojo',42,28,18,12,0,0,0,0,30,27,'KO',514,4);
INSERT INTO ESTADISTICA VALUES (15,'Victoria Rojo',102,89,41,35,2,1,150,75,30,27,'Decision Unanime',515,11);
INSERT INTO ESTADISTICA VALUES (16,'Victoria Rojo',56,48,24,20,2,0,120,30,30,27,'Sumision',516,12);
INSERT INTO ESTADISTICA VALUES (17,'Victoria Rojo',78,71,32,29,0,1,0,45,29,28,'Decision Dividida',517,5);
INSERT INTO ESTADISTICA VALUES (18,'Victoria Azul',92,98,36,40,1,2,75,135,28,29,'Decision Unanime',518,13);
INSERT INTO ESTADISTICA VALUES (19,'Victoria Rojo',38,24,16,10,0,0,0,0,30,27,'TKO',519,14);
INSERT INTO ESTADISTICA VALUES (20,'Victoria Azul',88,94,34,38,2,3,120,180,28,29,'Decision Unanime',520,15);

-- ============================================================
-- ACTUALIZAR ID_ESTADISTICA en JUEZ
-- ============================================================

UPDATE JUEZ SET ID_ESTADISTICA = 1 WHERE ID_JUEZ = 1;
UPDATE JUEZ SET ID_ESTADISTICA = 2 WHERE ID_JUEZ = 2;
UPDATE JUEZ SET ID_ESTADISTICA = 3 WHERE ID_JUEZ = 3;
UPDATE JUEZ SET ID_ESTADISTICA = 4 WHERE ID_JUEZ = 4;
UPDATE JUEZ SET ID_ESTADISTICA = 6 WHERE ID_JUEZ = 5;
UPDATE JUEZ SET ID_ESTADISTICA = 7 WHERE ID_JUEZ = 6;
UPDATE JUEZ SET ID_ESTADISTICA = 9 WHERE ID_JUEZ = 7;
UPDATE JUEZ SET ID_ESTADISTICA = 11 WHERE ID_JUEZ = 8;
UPDATE JUEZ SET ID_ESTADISTICA = 12 WHERE ID_JUEZ = 9;
UPDATE JUEZ SET ID_ESTADISTICA = 13 WHERE ID_JUEZ = 10;
UPDATE JUEZ SET ID_ESTADISTICA = 15 WHERE ID_JUEZ = 11;
UPDATE JUEZ SET ID_ESTADISTICA = 16 WHERE ID_JUEZ = 12;
UPDATE JUEZ SET ID_ESTADISTICA = 18 WHERE ID_JUEZ = 13;
UPDATE JUEZ SET ID_ESTADISTICA = 19 WHERE ID_JUEZ = 14;
UPDATE JUEZ SET ID_ESTADISTICA = 20 WHERE ID_JUEZ = 15;
