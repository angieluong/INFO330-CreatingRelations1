create table buildings(
    name varchar(80) not null,
    shortname varchar(10) unique,
    id integer default auto_increment,
    primary key (id));

create table rooms(
    number integer,
    buildingid integer,
    id integer default auto_increment,
    seating integer,
    primary key (id),
    foreign key (buildingid) references buildings(id));

insert into buildings(name, shortname)
values
('Mary Gates Hall', 'MGH'),
('Hitchcock Hall', 'HCK'),
('Paccar Hall', 'PCAR'),
('Raitt Hall', 'RAI'),
('Smith Hall', 'SMI'),
('Savery Hall', 'SAV'),
('Dempsey Hall', 'DEM');

insert into rooms(number, buildingid, seating)
values
(430, (select id from buildings where name='Mary Gates Hall'), 40),
(320, (select id from buildings where name='Hitchcock Hall'), 70),
(295, (select id from buildings where name='Paccar Hall'), 45),
(121, (select id from buildings where name='Raitt Hall'), 60),
(377, (select id from buildings where name='Smith Hall'), 100),
(156, (select id from buildings where name='Savery Hall'), 38),
(102, (select id from buildings where name='Dempsey Hall'), 45);