use university;

/*create table student(
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(2),
    city varchar(20)
);

insert into student
(rollno, name , marks , grade , city)
values
(101,"umar",90,"A+", "muzaffarabad"),
(102,"nazakt",78,"B-", "chala"),
(103,"usama",86,"B+", "sialkot"),
(104,"ali",98,"A+", "sundgalli"),
(105,"qureshi",75,"B+", "muumbai"),
(106,"raja",35,"D+", "hattian"),
(107,"shoaib",56,"C+", "muzaffarabad");
 
here we discuss table related query
alter (to change the schema)

add column
alter table table_name
add column column_name datatype constraints;

drop column
alter table table_name
drop column column_name datatype constraints;

rename table
alter table table_name
raname to new_table_name; */

select * from student;
 
 
alter table student
add column age int not null;

alter table student 
drop column age
/*here we rename st table from microsoft database*/
use microsoft;
alter table st 
rename to std;

/*change column(rename)
alter table table_name
change column old_name new_name new_datatype new_constraints

modify column (modify  datatype/constraints
alter table table_name
modify col_name new_datatype new_constraint
)*/

use university;

alter table student
add column age1 int not null default 19;

alter table student
modify column age1 varchar(2);

insert into student
(rollno, name, marks, age ,stu_age)
values
(107,"ali",68,22,100);

alter table student
change age1 stu_age int;

alter table student 
drop column age;
/*here we change table name */
alter table student_data 
rename to student;

alter table student
change column marks_data marks int;

select * from student;

/*drop pury table ko delete kr deta ha jb k trunncate sirf data ko delete krta ha mgr table ko delete nhe krta
drop table student
truncate table student*/

/*practice question 
a)change the name of column name to full name
b) delete all the students who scored marks less than 90
c) delete the column for grades*/

select * from student;

alter table student
change name full_name varchar(50);

set sql_safe_updates = 0;

delete from student
where marks < 80;

alter table student
drop grade;

