-- Location

INSERT INTO `NAVIN`.`location`
(`latitude`,
`longitude`,
`description`,
`configuration_active_id`)
VALUES
(
31.99938,
55.88999,
"Fake Location 1",
null);

-- Configuration

INSERT INTO `NAVIN`.`configuration`
(
`description`,
`location_id`)
VALUES
(
"Fake Configuration 1",
1);

-- Beacon_Type

INSERT INTO `NAVIN`.`beacon_type`
(`description`)
VALUES
("SECTOR_BEACON_TYPE");

INSERT INTO `NAVIN`.`beacon_type`
(`description`)
VALUES
("OBJECT_BEACON_TYPE");

INSERT INTO `NAVIN`.`beacon_type`
(`description`)
VALUES
("GATE_BEACON_TYPE");

INSERT INTO `NAVIN`.`beacon_type`
(`description`)
VALUES
("GATE_SECTOR_BEACON_TYPE");

-- Routes

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 3",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 4",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 5",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 2",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 6",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 1",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 7",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 8",
"Muito fake, mas é uma rota");

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Fake 9",
"Muito fake, mas é uma rota");

-- Beacons

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
2,
"Beacon Fake 2",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
3,
"Beacon Fake 3",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
2,
"Beacon Fake 4",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
2,
"Beacon Fake 5",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
3,
"Beacon Fake 1",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 6",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 7",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 8",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 9",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 10",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 11",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 12",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 13",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 14",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 15",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 16",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 17",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 18",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 19",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 20",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 21",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 22",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 23",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 24",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 25",
1);

INSERT INTO `NAVIN`.`beacon`
(`uuid`,
`major`,
`minor`,
`type_id`,
`description`,
`configuration_id`)
VALUES
(26374859485960493827384758673858,
10,
5,
1,
"Beacon Fake 26",
1);

-- Beacon_Route

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
1);

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
2);

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
4);

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
5);

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
(1,
7);

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
8);

INSERT INTO `NAVIN`.`beacon_route`
(`route_id`,
`beacon_id`)
VALUES
(1,
9);

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
"Gate Fake 1");

INSERT INTO `NAVIN`.`gate`
(
`beacon_a_id`,
`beacon_b_id`,
`description`)
VALUES
(
4,
5,
"Gate Fake 2");

INSERT INTO `NAVIN`.`gate`
(
`beacon_a_id`,
`beacon_b_id`,
`description`)
VALUES
(
11,
21,
"Gate Fake 3");

INSERT INTO `NAVIN`.`gate`
(
`beacon_a_id`,
`beacon_b_id`,
`description`)
VALUES
(
10,
8,
"Gate Fake 4");

INSERT INTO `NAVIN`.`gate`
(
`beacon_a_id`,
`beacon_b_id`,
`description`)
VALUES
(
12,
11,
"Gate Fake 5");

-- Category

INSERT INTO `NAVIN`.`category`
(
`name`,
`description`)
VALUES
(
"Category Fake 1",
"Essa chega a ser mais fake que as rotas");

INSERT INTO `NAVIN`.`category`
(
`name`,
`description`)
VALUES
(
"Category Fake 2",
"Essa chega a ser mais fake que as rotas");

INSERT INTO `NAVIN`.`category`
(
`name`,
`description`)
VALUES
(
"Category Fake 3",
"Essa chega a ser mais fake que as rotas");

INSERT INTO `NAVIN`.`category`
(
`name`,
`description`)
VALUES
(
"Category Fake 4",
"Essa chega a ser mais fake que as rotas");

INSERT INTO `NAVIN`.`category`
(
`name`,
`description`)
VALUES
(
"Category Fake 5",
"Essa chega a ser mais fake que as rotas");

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
1,
10);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
1,
15);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
1,
14);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
1,
12);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
1,
9);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
2,
2);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
2,
21);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
2,
17);

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
2,
3);

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
10.5,
5);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
1,
3,
90,
8);

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
30,
3);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
4,
10,
60,
10);
