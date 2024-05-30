/*join in sql join is used to combine rows from two or more tables , based on a related column between them
inner join returns record that have matching values in both tables

syntax
select columns
from tableA
inner join tableB
on table.col_name = tableB.col_namestudent*/
use college;


create table corse(
id int primary key,
course varchar(50)
);

insert into corse
(id , course)
values
(102,"english"),
(104,"math"),
(103,"science");

select * from student;
select * from corse;

select * 
from student
inner join corse
on student.rollno = corse.id;

/*we can also use alternative names*/
select * 
from student as s
inner join corse as c
on s.rollno = c.id;

/*left join return all records from the left table and the matched records from the right table

syntax
select columns
from tableA
left join tableB
on tableA.col_name = tableB.col_namestudent
*/

select *
from student as s
left join corse as c
on s.rollno = c.id;

/*right join return all records from the right table and the matched records from the left table
right table ka sara data ay ga mgr left table sy sirf wohe ay gy jo over lap krty ho gy

syntax
select columns
from tableA   ya wala left table ho ga
right join tableB ya wala right table ho ga
on tableA.col_name = tableB.col_namestudent
*/
select *
from corse as c
right join student as s
on c.id  = s.rollno;

/*full join return records when there is match in either left or right table
syntax

select *
from corse as c
left join student as s
on c.id  = s.rollno;
union
elect *
from corse as c
right join student as s
on c.id  = s.rollno;

*/

select *
from student as s
left join corse as c
on  s.rollno = c.id;
union
select *
from student as s
left join corse as c
on  s.rollno = c.id;

select *
from corse as c
left join student as s
on c.id  = s.rollno;
union
select *
from corse as c
right join student as s
on c.id  = s.rollno;

/*exclusive join  ma wo data ay ga jo b ma overlap na kry
syntax
select *
from student as s
left join corse as c
on  s.rollno = c.id
where c.id is null;
*/
select *
from student as s
left join corse as c
on  s.rollno = c.id
where c.id is null;

/*exclusive join  ma wo data ay ga jo A ma overlap na kry
syntax
select *
from student as s
left join corse as c
on  s.rollno = c.id
where s.id is null;
*/

select *
from corse as c
right join student as s
on c.id  = s.rollno
where c.id is null;

/*self join it is a regular join but the table is joined with itself

syntax
select columns
from tableA
join tableB
on a.column  =  b.coulumn*/

create table employe(
id int primary key,
name varchar(50),
manager_id int
);

insert into employe
(id,name, manager_id)
values
(101,"adil",103),
(102,"awais",104),
(103,"shoaib",null),
(104,"sohail",103);

select * from employe;

select a.name as manager_id , b.name
from employe as a
join employe as b
on a.id = b.manager_id;

select *
from employe as a
join employe as b
on a.id = b.manager_id;
