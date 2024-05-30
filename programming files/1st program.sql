CREATE DATABASE college;

use college;

create table student(
rollno int primary key,
name varchar(50)
);

select * from student;
/*for multiple values we use this sentex*/
insert into student
(rollno, name)
values
(101,"umar"),
(102,"adil"),
(103, "awais");

/*for single value to insert we use this format*/
insert into student values (104, "shoaib");