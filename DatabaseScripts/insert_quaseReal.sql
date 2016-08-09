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
"Museu da PUCRS",
1);

-- Configuration

INSERT INTO `NAVIN`.`configuration`
(
`description`,
`location_id`)
VALUES
(
"Configuração Padrão",
1);

-- Routes

INSERT INTO `NAVIN`.`route`
(`name`,
`description`)
VALUES
("Rota Padrão",
"Rota para exemplificar o funcionamento do aplicativo");


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
100,
200,
1,
"Beacon Roxo",
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
100,
200,
1,
"Beacon Roxo 2",
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
100,
200,
1,
"Beacon Azul",
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
100,
200,
1,
"Beacon Azul 2",
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
100,
200,
1,
"Beacon Verde",
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
(
`name`,
`description`)
VALUES
(
"Química",
"Mostra experimentos sobre química");

INSERT INTO `NAVIN`.`category`
(
`name`,
`description`)
VALUES
(
"Física",
"Mostra experimentos sobre física");

-- Beacon_Category

INSERT INTO `NAVIN`.`beacon_category`
(
`category_id`,
`beacon_id`)
VALUES
(
1,
5);

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
5);

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
3,
4,
60,
4);

INSERT INTO `NAVIN`.`connection`
(
`beacon_a_id`,
`beacon_b_id`,
`direction`,
`distance`)
VALUES
(
3,
6,
15,
9);

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
60,
4);

