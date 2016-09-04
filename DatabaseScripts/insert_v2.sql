-- Location

INSERT INTO `NAVIN`.`location`
(`id`,
`latitude`,
`longitude`,
`description`,
`configuration_active_id`,
`dt_last_updated`)
VALUES
(1,
0,
0,
"Local para testes",
null,
"2016-08-04 00:00:00");

-- Configuration

INSERT INTO `NAVIN`.`configuration`
(`id`,
`description`,
`location_id`)
VALUES
(1,
"Configuracao de testes",
1);

UPDATE `NAVIN`.`location` SET `configuration_active_id` = 1 WHERE `id` = 1;

-- Routes

INSERT INTO `NAVIN`.`route`
(`id`,`name`,
`description`)
VALUES
(1, "Rota Padrao",
"Rota para exemplificar o funcionamento do aplicativo");

INSERT INTO `NAVIN`.`route`
(`id`,`name`,
`description`)
VALUES
(2, "Rota Padrao 2",
"Rota 2 para exemplificar o funcionamento do aplicativo");

-- Beacon_Type

INSERT INTO `NAVIN`.`beacon_type`
(`id`, `description`)
VALUES
(1, "SECTOR_BEACON_TYPE");

INSERT INTO `NAVIN`.`beacon_type`
(`id`, `description`)
VALUES
(2, "OBJECT_BEACON_TYPE");

INSERT INTO `NAVIN`.`beacon_type`
(`id`, `description`)
VALUES
(3, "GATE_BEACON_TYPE");

INSERT INTO `NAVIN`.`beacon_type`
(`id`, `description`)
VALUES
(4, "GATE_SECTOR_BEACON_TYPE");


-- Beacons

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(1,
26374859485960493827384758673858,
100,
200,
1,
"Beacon Roxo",
1);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(2,
26374859485960493827384758673858,
100,
200,
1,
"Beacon Roxo 2",
1);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(3,
26374859485960493827384758673858,
100,
200,
1,
"Beacon Azul",
1);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(4,
26374859485960493827384758673858,
100,
200,
1,
"Beacon Azul 2",
1);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(5,
26374859485960493827384758673858,
100,
200,
2,
"Beacon Verde",
1);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(6,
26374859485960493827384758673858,
100,
200,
2,
"Beacon Verde 2",
1);


-- Beacon_Route

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
3);

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
6);

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(2,
3);


-- Gates

INSERT INTO `NAVIN`.`gate`
(
`beacon_a_id`,
`beacon_b_id`,
`description`)
VALUES
(
1,
2,
"Gate da Entrada Principal");


-- Category

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(1,
"Entrada/Saida",
"Beacons que sao entrada ou saida do local");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(2,
"Fisica",
"Mostra experimentos sobre fisica");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(3,
"Quimica",
"Mostra experimentos sobre quimica");

-- Beacon_Category

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
1,
1);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
3,
3);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
2,
6);

-- Connections

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
1,
2,
0,
3);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
2,
3,
90,
6);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
2,
4,
0,
5);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
4,
5,
270,
2);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
5,
6,
0,
3);

-- CONFIGURACOES PARA TESTE DO MUSEU

-- Location

INSERT INTO `NAVIN`.`location`
(`id`,
`latitude`,
`longitude`,
`description`,
`configuration_active_id`,
`dt_last_updated`)
VALUES
(2,
-30.05849,
-51.17602,
"Museu da PUCRS",
null,
"2016-08-04 00:00:00");

-- Configuration

INSERT INTO `NAVIN`.`configuration`
(`id`,
`description`,
`location_id`)
VALUES
(2,
"Configuracao de testes 1",
2);

INSERT INTO `NAVIN`.`configuration`
(`id`,
`description`,
`location_id`)
VALUES
(3,
"Configuracao de testes 2",
2);

INSERT INTO `NAVIN`.`configuration`
(`id`,
`description`,
`location_id`)
VALUES
(4,
"Configuracao de testes 3",
2);

UPDATE `NAVIN`.`location` SET `configuration_active_id` = 2 WHERE `id` = 2;

-- Category

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(4,
"Categoria Fake 1",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(5,
"Categoria Fake 2",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(6,
"Categoria Fake 3",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(7,
"Categoria Fake 4",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(8,
"Categoria Fake 5",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(9,
"Categoria Fake 6",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(10,
"Categoria Fake 7",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(11,
"Categoria Fake 8",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(12,
"Categoria Fake 9",
"bla bla bla bla bla");

INSERT INTO `NAVIN`.`category`
(`id`,
`name`,
`description`)
VALUES
(13,
"Categoria Fake 10",
"bla bla bla bla bla");

-- Beacons fake 1

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(7,
26374859485960493827384758673858,
7,
200,
1,
"Beacon Roxo",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(8,
26374859485960493827384758673858,
8,
200,
1,
"Beacon Roxo 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(9,
26374859485960493827384758673858,
9,
200,
1,
"Beacon Azul",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(10,
26374859485960493827384758673858,
10,
200,
1,
"Beacon Azul 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(11,
26374859485960493827384758673858,
11,
200,
2,
"Beacon Verde",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(12,
26374859485960493827384758673858,
12,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(13,
26374859485960493827384758673858,
13,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(14,
26374859485960493827384758673858,
14,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(15,
26374859485960493827384758673858,
15,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(16,
26374859485960493827384758673858,
16,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(17,
26374859485960493827384758673858,
17,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(18,
26374859485960493827384758673858,
18,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(19,
26374859485960493827384758673858,
19,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(20,
26374859485960493827384758673858,
20,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(21,
26374859485960493827384758673858,
21,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(22,
26374859485960493827384758673858,
22,
200,
2,
"Beacon Verde 2",
2);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(23,
26374859485960493827384758673858,
23,
200,
2,
"Beacon Verde 2",
2);

-- Beacons fake 2

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(24,
26374859485960493827384758673858,
24,
200,
1,
"Beacon Roxo",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(25,
26374859485960493827384758673858,
25,
200,
1,
"Beacon Roxo 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26,
26374859485960493827384758673858,
26,
200,
1,
"Beacon Azul",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(27,
26374859485960493827384758673858,
27,
200,
1,
"Beacon Azul 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(28,
26374859485960493827384758673858,
28,
200,
2,
"Beacon Verde",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(29,
26374859485960493827384758673858,
29,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(30,
26374859485960493827384758673858,
30,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(31,
26374859485960493827384758673858,
31,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(32,
26374859485960493827384758673858,
32,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(33,
26374859485960493827384758673858,
33,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(34,
26374859485960493827384758673858,
34,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(35,
26374859485960493827384758673858,
35,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(36,
26374859485960493827384758673858,
36,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(37,
26374859485960493827384758673858,
37,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(38,
26374859485960493827384758673858,
38,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(39,
26374859485960493827384758673858,
39,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(40,
26374859485960493827384758673858,
40,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(41,
26374859485960493827384758673858,
41,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(42,
26374859485960493827384758673858,
42,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(43,
26374859485960493827384758673858,
43,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(44,
26374859485960493827384758673858,
44,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(45,
26374859485960493827384758673858,
45,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(46,
26374859485960493827384758673858,
46,
200,
2,
"Beacon Verde 2",
3);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(47,
26374859485960493827384758673858,
47,
200,
2,
"Beacon Verde 2",
3);

-- Beacons fake 3

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(48,
26374859485960493827384758673858,
48,
200,
1,
"Beacon Roxo",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(49,
26374859485960493827384758673858,
49,
200,
1,
"Beacon Roxo 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(50,
26374859485960493827384758673858,
50,
200,
1,
"Beacon Azul",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(51,
26374859485960493827384758673858,
51,
200,
1,
"Beacon Azul 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(52,
26374859485960493827384758673858,
52,
200,
2,
"Beacon Verde",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(53,
26374859485960493827384758673858,
53,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(54,
26374859485960493827384758673858,
54,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(55,
26374859485960493827384758673858,
55,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(56,
26374859485960493827384758673858,
56,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(57,
26374859485960493827384758673858,
57,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(58,
26374859485960493827384758673858,
58,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(59,
26374859485960493827384758673858,
59,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(60,
26374859485960493827384758673858,
60,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(61,
26374859485960493827384758673858,
61,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(62,
26374859485960493827384758673858,
62,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(63,
26374859485960493827384758673858,
63,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(64,
26374859485960493827384758673858,
64,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(65,
26374859485960493827384758673858,
65,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(66,
26374859485960493827384758673858,
66,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(67,
26374859485960493827384758673858,
67,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(68,
26374859485960493827384758673858,
68,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(69,
26374859485960493827384758673858,
69,
200,
2,
"Beacon Verde 2",
4);

INSERT INTO `NAVIN`.`beacon`
(`id`,
`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(70,
26374859485960493827384758673858,
70,
200,
2,
"Beacon Verde 2",
4);
