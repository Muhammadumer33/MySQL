create database university;
use university;

create table student(
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
/* here * is used to select all columns*/
select * from student;

select name , marks from student;

select distinct city from student;
/* condition can also be written as 
select *      	    	 select all
from student			from students
 where marks > 80;		marks greater than 80
*/
select *
 from student
 where marks > 80;

select * 
from student
 where city = "muzaffarabad";
 
 select *
 from student
 where marks > 50  and city = "muzaffarabad";
 
 select * from student;
 
 select * 
from student
where marks + 10 > 100;

 select * 
from student
where marks > 80 or city = "muzaffarabad";


 select * 
from student
where marks between 70 and 90;

 select * 
from student
where city in ("muzaffarabad", "chala");

 select * 
from student
where city not in ("muzaffarabad", "chala");

/*yahan pr limit first 3 ka he student ka data show kry ga*/
 select * 
from student
limit 3;

select * 
from student
where marks > 75
limit 3;

/* show table rows in the assending order  */
select * 
from student
order by city asc;

select * 
from student
order by marks asc;

/* agr hmy top 3 students k marks ka data chaiye mgr hmy marks ka nhe pta phly descending ma convert kry gy phr limit lga dy gy 3 ki*/
select * 
from student
order by marks desc
limit 3;

/* aggregate functions perform a calculation on a set of values , and return a single value
count()
max()
min()
sum()
avg()
*/

select marks
 from student;

select max(marks)
from student;

select min(marks)
from student;

select avg(marks)
from student;

select count(rollno)
from student;

/*group by clause it collects data from multiple records and groups the result by on eor more column
select k agy or aggregrate sy pechy jitny group hm likhy gy wohe sb last ma group by k agy b likhny pary gy */
select city , count(rollno)
from student 
group by city;

select city , name,  count(rollno)
from student 
group by city, name;

select city , avg(marks)
from student 
group by city;

/* practice quiz 2. write a query to find the avg marks in each city in ascending order*/
select city , avg(marks)
from student 
group by city
order by city;

select city , avg(marks)
from student 
group by city
order by avg(marks);

select city , avg(marks)
from student 
group by city
order by avg(marks) desc;

/*from program four continue*/
select grade , count(rollno)
from student
group by grade
order by grade;

/*having clause used when we want to apply any condition after grouping
count number of students in each city where max marks cross 90	
where clause is used for applying condition on rows while having clause is used for applying condition on columns*/

select city, count(rollno)
from student
group by city
having max(marks > 90);

/*sequence of writing clauses
select col
from table
where condtion
group by col
having condition 
order by col asc
*/

select city 
from student
where  grade = "A+" or grade = "B+"
group by city
having max(marks) > 70 
order by city asc;

select * from student;

/* table related query update to update existing row.alter		set sql_safe_updates = 0; is sy hm safe mode sy bahir aa kr database k table ko update kr
skty hain agr set sql_safe_updates = 1; isi ko wapis 1 kr dyn phr dubara safe mode ma chly jay gy*/
set sql_safe_updates = 0;
update student
set grade = "O"
where grade  = "A+";

update student
set marks = 92
where rollno = 103;

update student
set grade = "B"
where marks > 80;

update student
set grade = "C"
where marks between 50 and 70;

update student
set marks = marks+1;

/*delete to delete existing rows*/
delete 
from student 
where marks < 60;

select * from student;
/* delete from student 
isko use krny sy sara table delete ho jay ga*/
