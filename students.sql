create table students(
    id integer not null,
    firstname varchar(40),
    lastname varchar(80),
    age numeric,
    primary key (id));

insert into students(id, firstname, lastname, age)
values 
(1, 'Fred', 'Flintstone', 35),
(2, 'Wilma', 'Flintstone', 29),
(3, 'Barney', 'Rubble', 33),
(4, 'Betty', 'Rubble', 29),
(5, 'Pebbles', 'Flintstone', 1),
(6, 'Bam-Bam', 'Rubble', 1),
(7, 'Angelica', 'Pickles', 23),
(8, 'Bart', 'Simpson', 34),
(9, 'Brian', 'Griffin', 20),
(10, 'Chuckie', 'Finster', 22),
(11, 'Daria', 'Morgendorffer', 34),
(12, 'Dora', 'Marquez', 18);