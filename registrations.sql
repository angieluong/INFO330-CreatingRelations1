create table student_courses(
    studentid int not null,
    course varchar(40),
    grade float default null,
    foreign key (studentid) references students(id),
    foreign key (course) references courses(code),
    check (length(course) >= 7));
    
insert into student_courses(studentid, course, grade)
values 
(1, 'INFO330A', null),
(1, 'INFO314', null),
(1, 'INFO448A', null),
(3, 'INFO330A', null),
(3, 'INFO449A', null),
(2, 'BAW0100', null),
(2, 'BAW100A', null),
(4, 'BAW0100', null);