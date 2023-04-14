create table courses(
    code varchar(40) not null,
    description varchar(400),
    start date not null,
    end date not null,
    primary key (code),
    check (end > start and (length(code) >= 7)));
    
insert into courses(code, start, end, description)
values 
('INFO330A', '2023-04-01', '2023-06-01', 'Data and databases'),
('INFO314', '2023-04-01', '2023-06-01', 'Networking and distributed Systems'),
('INFO448A', '2023-09-25', '2023-12-19', 'Introduction to iOS'),
('INFO449A', '2023-09-25', '2023-12-19', 'Introduction to Android'),
('BAW0100', '2023-04-01', '2023-06-01', 'Introduction to Basket-Weaving'),
('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving');