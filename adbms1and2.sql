create table Student1(roll_no int primary key,s_name varchar(28),s_address varchar(28));
create table marksheet(roll_no int references Student1(roll_no),sub1 varchar(10),sub2 varchar(20),sub3 varchar(10));
insert into Student1 values(1,'rahul','pattom');
insert into Student1 values(2,'sachin','ambalam mukku');
insert into Student1 values(3,'saurav','nalanchira');
insert into marksheet values(1,78,89,94);
insert into marksheet values(1,78,89,94);
insert into marksheet values(3,23,78,46);
select sub1 from Student1,marksheet where s_name='sachin' and Student1.roll_no=marksheet.roll_no;
