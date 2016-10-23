use NAVIN;

insert into location values (1,-30.0606457,-51.1765241,'Rota Fake 1',null,now());
insert into location values (2,0,0,'Rota A',null,now());

insert into configuration values (1,'Rota Fake 1', 1);

update location set configuration_active_id = 1 where id= 1;

insert into category values (1, 'Entrada/Saida', 'Categoria que contém a entrada e a saida'),
(2,'Fisica','Categoria que contém os experimentos de fisica'),
(3,'Astrologia','Categoria que contém os experimentos de astrologia'),
(4,'Quimica','Categoria que contém os experimentos de quimica'),
(5,'Historia','Categoria que contém os experimentos de historia');

insert into beacon_type values(1,'Tipo default');

insert into beacon values (1,'',1,1,1,'Entrada/Saida',1),
(2,'',1,1,1,'Beacon Auxiliar 1',1),
(3,'',1,1,1,'Beacon Auxiliar 2',1),
(4,'',1,1,1,'Beacon Auxiliar 3',1),
(5,'',1,1,1,'Beacon Auxiliar 4',1),
(6,'',1,1,1,'Beacon Auxiliar 5',1),
(7,'',1,1,1,'Experimento 5',1),
(8,'',1,1,1,'Experimento 6',1),
(9,'',1,1,1,'Experimento 7',1),
(10,'',1,1,1,'Beacon Auxiliar 6',1),
(11,'',1,1,1,'Beacon Auxiliar 7',1),
(12,'',1,1,1,'Beacon Auxiliar 8',1),
(13,'',1,1,1,'Beacon Auxiliar 9',1),
(14,'',1,1,1,'Experimento 4',1),
(15,'',1,1,1,'Experimento 3',1),
(16,'',1,1,1,'Experimento 1',1),
(17,'',1,1,1,'Beacon Auxiliar 10',1),
(18,'',1,1,1,'Beacon Auxiliar 11',1),
(19,'',1,1,1,'Beacon Auxiliar 12',1),
(20,'',1,1,1,'Experimento 2',1);

insert into connection values 
(1,1,2,0,8),
(2,1,3,0,8),
(3,2,3,0,8),
(4,2,4,0,8),
(5,3,4,0,8),
(6,3,16,0,7),
(7,4,5,0,7),
(8,4,9,0,10),
(9,4,10,0,14),
(10,5,6,0,7),
(11,6,7,0,8),
(12,6,8,0,8),
(13,10,11,0,5),
(14,11,12,0,8),
(15,12,13,0,6),
(16,13,14,0,6),
(17,13,15,0,7),
(18,16,17,0,7),
(19,17,18,0,9),
(20,18,19,0,6),
(21,19,20,0,6);






