create table temp1(
id int unique
);

insert into temp1 values (101);
insert into temp1 values (102);

select * from temp1;

/*use of default constraint*/

create table emp(
	id int,
    salary int default 25000
);

insert into emp (id) values(101);
select * from emp;
