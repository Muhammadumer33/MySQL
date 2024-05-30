use university;
create table payment (
	cust_id int primary key,
    cust_name varchar(50),
    cust_mode varchar(40),
    city varchar(50)
    );
    
    insert into payment
    (cust_id,cust_name,cust_mode,city)8u
    values
		(101,"olivia barret","netbanking", "portiand"),
        (102,"umar","debit card", "mzd"),
		(103,"ali","credit card", "ambore"),
		(104,"asad","credit card", "mank"),
		(105,"basit","netbanking", "mank"),
	    (106,"usama","credit card", "ambore"),
	    (107,"nazakat","debit card", "mzd"),
	    (108,"sadra","debit card", "galli"),
	    (109,"raju","netbanking", "road"),
	    (110,"shoaib","netbanking", "mank");

select cust_mode , count(cust_id)
from payment
group by cust_mode;