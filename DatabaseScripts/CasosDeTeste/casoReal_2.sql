use NAVIN;

insert into location values (1,-30.0606457,-51.1765241,'Rota real 2',null,now());
insert into location values (2,0,0,'Rota A',null,now());

insert into configuration values (1,'Rota real 2', 1);

update location set configuration_active_id = 1 where id= 1;

insert into category values (1, 'Entrada/Saida', 'Categoria que contém a entrada e a saida'),
(2,'Fisica','Categoria que contém os experimentos de fisica'),
(3,'Quimica','Categoria que contém os experimentos de Quimica');

insert into beacon_type values(1,'Tipo default');

insert into beacon values (1,'',1,1,1,'Entrada/Saida',1),
(2,'',1,1,1,'Beacon Auxiliar 1',1),
(3,'',1,1,1,'Beacon Auxiliar 2',1),
(4,'',1,1,1,'Experimento 1',1),
(5,'',1,1,1,'Beacon Auxiliar 3',1),
(6,'',1,1,1,'Experimento 2',1);

insert into connection values (1,1,2,0,2),
(2,2,3,0,2),(3,3,4,0,4),(4,4,5,0,2),(5,5,6,0,2);


