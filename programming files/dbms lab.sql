create database hallbooking;
use hallbooking;

create table owner(
owner_id int primary key,
email varchar(50),
phone int
);

Create table hall(
hall_id int primary key,
owner_id int,
foreign key (owner_id) references owner(owner_id),
name varchar(50),
location varchar(50),
capacity varchar(50)
);

create table user(
user_id int primary key,
name varchar(50),
emial varchar(50),
phone int
);

create table booking(
booking_id int primary key,
user_id int,
foreign key (user_id) references user(user_id),
hall_id int,
foreign key (hall_id) references hall(hall_id),
booking_date int,
start_time varchar(50),
end_time varchar(50),
price int
);

create table payment(
payment_id int primary key,
booking_id int,
foreign key (booking_id) references booking(booking_id),
payment_date varchar(50)
);