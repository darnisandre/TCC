CREATE DATABASE NAVIN;

use navin;

create table category(
	id int auto_increment primary key,
    name varchar(100) not null,
    description text not null
);

create table route(
	id int auto_increment primary key,
    name varchar(100) not null,
    description text not null
);


create table location(
	id int auto_increment primary key,
	latitude numeric(10,7) not null,
    longitude numeric(10,7) not null,
    description text not null,
    configuration_active_id int,
    dt_last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table configuration(
	id int auto_increment primary key,
    description text not null,
	location_id int not null,
    foreign key fk_configuration_location (location_id) 
		references location (id)
);

alter table location add constraint 
foreign key fk_location_configuration_active (configuration_active_id) 
		references configuration (id);

create table beacon_type(
	id int auto_increment primary key,
    description text not null
);

create table beacon(
	id int auto_increment primary key,
    uuid varchar(36) not null,
    major int not null,
    minor int not null,
    type_id int not null,
    description text not null,
    configuration_id int not null,
    foreign key fk_beacon_type (type_id) 
		references beacon_type (id),
	foreign key fk_beacon_configuration (configuration_id)
		references configuration (id)
);

create table gate(
	id int auto_increment primary key,
    beacon_a_id int not null,
    beacon_b_id int not null,
    description text not null,
    foreign key fk_gate_beacon_a (beacon_a_id)
		references beacon (id),
	foreign key fk_gate_beacon_b (beacon_b_id)
		references beacon (id)
);


create table connection(
	id int auto_increment primary key,
    beacon_a_id int not null,
    beacon_b_id int not null,
    direction numeric(5,2) not null,
    distance numeric(10,3) not null,
    foreign key fk_connection_beacon_a (beacon_a_id)
		references beacon (id),
	foreign key fk_connection_beacon_b (beacon_b_id)
		references beacon (id)
);

create table beacon_category(
	id int auto_increment primary key,
    category_id int not null,
    beacon_id int not null,
    foreign key fk_beacon_category_category (category_id)
		references category (id),
    foreign key fk_beacon_category_beacon (beacon_id)
		references beacon (id)
);

create table beacon_route(
	id int auto_increment primary key,
    route_id int not null,
    beacon_id int not null,
    foreign key fk_beacon_route_route (route_id)
		references route (id),
    foreign key fk_beacon_route_beacon (beacon_id)
		references beacon (id)
);
