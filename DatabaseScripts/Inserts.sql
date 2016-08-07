
insert into location values (1,31.000312,32.030312,"Location 1",null);

insert into configuration values (1,"Configuration 1",1);

update location set configuration_active_id = 1 where id = 1;