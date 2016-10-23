use NAVIN;

insert into location values (1,-30.0606457,-51.1765241,'Rota Fake 2',null,now());
insert into location values (2,0,0,'Rota A',null,now());

insert into configuration values (1,'Rota Fake 2', 1);

update location set configuration_active_id = 1 where id= 1;

insert into category values (1, 'Entrada/Saida', 'Categoria que contém a entrada e a saida'),
(2,'Fisica','Categoria que contém os experimentos de fisica'),
(3,'Quimica','Categoria que contém os experimentos de quimica');

insert into beacon_type values(1,'Tipo default');

insert into beacon values (1,'',1,1,1,'Entrada/Saida',1),
(2,'',1,1,1,'Beacon Auxiliar 1',1),
(3,'',1,1,1,'Beacon Auxiliar 2',1),
(4,'',1,1,1,'Beacon Auxiliar 3',1),
(5,'',1,1,1,'Beacon Auxiliar 4',1),
(6,'',1,1,1,'Beacon Auxiliar 5',1),
(7,'',1,1,1,'Beacon Auxiliar 6',1),
(8,'',1,1,1,'Experimento 5',1),
(9,'',1,1,1,'Experimento 4',1),
(10,'',1,1,1,'Experimento 6',1),
(11,'',1,1,1,'Experimento 7',1),
(12,'',1,1,1,'Beacon Auxiliar 7',1),
(13,'',1,1,1,'Beacon Auxiliar 8',1),
(14,'',1,1,1,'Beacon Auxiliar 9',1),
(15,'',1,1,1,'Experimento 1',1),
(16,'',1,1,1,'Beacon Auxiliar 10',1),
(17,'',1,1,1,'Beacon Auxiliar 11',1),
(18,'',1,1,1,'Beacon Auxiliar 12',1),
(19,'',1,1,1,'Experimento 3',1),
(20,'',1,1,1,'Beacon Auxiliar 13',1),
(21,'',1,1,1,'Beacon Auxiliar 14',1),
(22,'',1,1,1,'Experimento 2',1);

insert into connection values 
(1,1,2,0,5),
(2,1,12,0,4),
(3,2,3,0,5),
(4,3,4,0,4),
(5,4,5,0,5),
(6,5,6,0,4),
(7,6,11,0,5),
(8,6,7,0,4),
(9,7,8,0,6),
(10,8,9,0,4),
(11,8,10,0,4),
(12,12,13,0,5),
(13,12,16,0,4),
(14,13,14,0,5),
(15,14,15,0,7),
(16,16,19,0,4),
(17,16,17,0,4),
(18,17,18,0,4),
(19,18,19,0,4),
(20,18,20,0,4),
(21,20,21,0,4),
(22,21,22,0,5);








