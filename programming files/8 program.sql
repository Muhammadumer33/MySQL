/*union is used to combine the result set of two or more select statements.alter
give a unique records

syntax
select columns from tableA
union 
select column from tableB*/

use college;

/*union duplicates ko hata kr deta ha*/
select name from employe
union
select name from employe;

/*union all duplicates ko b allow krta donu table ka data ikatha kr k deta ha */
select name from employe
union all
select name from employe;

/*sql sbu queries
 a subquery or inner query or a nested query is a query within another sql query
 it involves two select statemnets
 
 syntax
 select columns
 from tableA
 where col_name operator
 (subquery)
 
 subquery ko hm 
 1) select 
 2) from 
 3) where cluse these 3 are clauses		ma likh skty hain
 mgr sb sy zyada use hony wala tareeqa where clause wala ha*/
 
 use university;
 select * from student;
 
 insert into student
 (rollno,full_name,marks,city,stu_age)
 values
(102,"asir",45,"ambore",22),
(105,"amir",54,"chela",34),
(106,"azma",77,"manak",27);

/*exmple
get names of all the students who scored more than class average
step1 : find the avg of class
step2 : find the names fo students with marks > avg*/

select avg(marks)
from student;
 
/*ya static ha q k agr  nay student ka data enter kry gy to hmary pas avg alg ay ge or avg k hisab sy name or marks b output table ma show ho gy*/
select full_name , marks
from student
where marks > 76.5000;

/*ya query static nhe ha dynamic ha mtlb automatically update hoti rhy jb b nay student ka data enter kia jay ya delete kia jay*/
select full_name , marks
from student
where marks > (select avg(marks)
from student);

/*exmple
get names of all the students with even roll numbers
step1 : find the even of roll numbers
step2 : find the names fo students with even rollno*/

select * from student;

select rollno , full_name
from student
where rollno % 2 = 0;

select full_name, rollno
from student
where rollno in(
select rollno 
from student 
where rollno % 2 = 0
);

/*example with from
find the max marks from the student of delhi
step1 : find the student of dehli
step2 : find their max marks using the sublist in step 1*/

select * from student;

select * 
from student
where stu_age  = 19;
/*from subquery asy likhty hain or from subquery ma hamesha hm alias use krty hain is ma hm ny (as temp) alian use kia ha*/
select max(marks)
from(select * 
from student
where stu_age  = 19) as temp;

/*aik or tareeqy sy b likh skty hain*/

select max(marks) 
from student
where stu_age = 19;

select full_name , marks, rollno
from student 
where marks in (select max(marks) 
from student
where stu_age = 19);

/*mysq; views a view is a virtual table based on the result_set of an sql statement
is ma hm aik table ko choty choty views ma create hain taa k wo view customer ya company ko unki need 
k mutabiq table ka data show kry
syntax:
create view view1 as
select rollno, full_name from student;

select * from view1;
*/

/*make view for teacher in which teacher can see only student roll no , marks and fullname
output table aik virtula table hota ha real nhe hota*/
create view view1 as
select rollno, full_name, marks from student;

select * from view1;

select *
from view1
where marks > 90;

/*view1 ko drop b kr skty hain
drop view view1;			*/