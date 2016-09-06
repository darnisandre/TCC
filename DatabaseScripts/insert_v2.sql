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
(1, "Rota Completa",
"Rota que passa por todas categorias");

INSERT INTO `NAVIN`.`route`
(`id`,`name`,
`description`)
VALUES
(2, "Rota 1",
"Rota que passa so em uma categoria");

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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
47873,
59567,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
27773,
49738,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
61786,
1024,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
100,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
11,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
12,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
13,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
14,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
15,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
16,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
17,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
18,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
19,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
20,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
21,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
22,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
23,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
28,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
29,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
30,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
31,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
32,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
33,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
34,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
35,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
36,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
37,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
38,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
39,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
40,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
41,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
42,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
43,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
44,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
45,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
46,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
47,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
52,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
53,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
54,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
55,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
56,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
57,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
58,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
59,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
60,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
61,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
62,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
63,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
64,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
65,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
66,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
67,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
68,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
69,
200,
1,
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
"b9407f30-f5f8-466e-aff9-25556b57fe6d",
70,
200,
1,
"Beacon Verde 2",
4);
