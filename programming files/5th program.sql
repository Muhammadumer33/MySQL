/*foreign key. */
use microsoft;

create table st(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(2),
    city varchar(20)
);

create table dept(
id int primary key,
name varchar(50)
);


/*cascading for foreign key iska mtlb agr kl ko hm dep ko update ya delete krty hain to teacher waly table ma b wo update ya delete ho jay automatically*/
create table teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);

/*for example use of cascade*/
insert into dept
values
(101,"english"),
(102,"IT");

select * from dept;

insert into teacher
values
(101,"adam",101),
(102,"eva",102);

select * from teacher;

update dept
set id = 103
where id =  102;
