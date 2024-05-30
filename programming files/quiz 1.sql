create database microsoft;

use microsoft;
create table employee(
	id int primary key,
    name varchar(50),
    salary int
);

insert into employee
(id,name,salary)
values
(1,"umar",12000),
(2,"adil",15000),
(3,"awais",18000);

select * from employee;
