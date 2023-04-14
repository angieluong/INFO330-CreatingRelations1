create table timeslots(
id integer default auto_increment,
starttime datetime,
endtime datetime,
primary key(id));

create table schedule(
    coursecode varchar(40),
    roomid integer not null, 
    timeslotid integer not null,
    foreign key (roomid) references rooms(id),
    foreign key (coursecode) references courses(code),
    foreign key (timeslotid) references timeslots(id),
    unique(roomid, timeslotid));

insert into timeslots(starttime, endtime)
values
('08:30:00', '09:20:00'),
('09:30:00', '10:20:00'),
('10:30:00', '11:20:00'),
('11:30:00', '12:20:00'),
('12:30:00', '13:20:00'),
('13:30:00', '14:20:00'),
('14:30:00', '15:20:00'),
('15:30:00', '16:20:00');

insert into schedule(coursecode, roomid, timeslotid)
values
('INFO330A', 1, 1),
('INFO314', 1, 2),
('INFO448A', 1, 3),
('INFO449A', 4, 1),
('BAW0100', 2, 1),
('BAW100A', 3, 1),
('INFO330A', 3, 2),
('BAW0100', 4, 2),
('INFO314', 5, 1);
