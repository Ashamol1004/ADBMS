create table bus(bus_no int primary key,source varchar(20),destination varchar(20),couch_type varchar(20));
create table reservation(pnr_no int ,journey_date date,no_of_seats int,address varchar(20),contact_no number(10),bus_no int references bus(bus_no),seat_no int);
create table ticket(ticket_no int primary key,journey_date date,age int,sex varchar(10),sourcevarchar(20),destination varchar(20),Dep_time varchar(10),bus_no int);
create table passenger(pnr_no int,ticket_no int references ticket(ticket_no),name varchar(20),age int,sex varchar(10),contact_no number(10));
create table cancellation(pnr_no int,journey_date date,seat_no int,contact_no number(10));


insert into bus values(101,'tvm','kollam','ac');
insert into bus values(201,'tvm','kochi','non_ac');
insert into bus values(301,'alapuzha','trissur','sleeper');


insert into reservation values(40,'01-apr-2022',50,'pattom',9876543210,201,3);
insert into reservation values(35,'02-apr-2022',54,'palayam',9012345678,101,52);
insert into reservation values(8,'03-apr-2022',40,'anad',8974563210,301,22);
insert into reservation values(9,'10-oct-19',30,'nedumangad',6238781964,401,49);


 insert into ticket values(54,'01-apr-2022',20,'male','tvm','kollam','10.pm',101);
 insert into ticket values(50,'02-apr-2022',25,'female','tvm','kochi','10.pm',201);
 insert into ticket values(51,'03-apr-2022',10,'female','alapuzha','trissur','11.am',301);
 insert into ticket values(49,'03-apr-2022',10,'female','alapuzha','trissur','11.am',301);


insert into passenger values('150',54,'Suresh',20,'male',9876543210);
insert into passenger values('151',50,'Ammu',25,'female',8976543210);
insert into passenger values('152',51,'Rehna',10,'female',8098745632);


insert into cancellation values('150','01-apr-2022',3,9876543210);
insert into cancellation  values('151','02-apr-2022',52,8976543210);
insert into cancellation  values('154','03-apr-2022',22,8098745632);


a:  select name,ticket_no from passenger;
b: select name from passenger where sex='male';
c: select name from passenger where age between 20 and 40;  
e: alter table cancellation add constraint sn check(length(seat_no)=12);
g:select * from cancellation,passenger where passenger.pnr_no=cancellation.pnr_no and journey_date='10-oct-19';
h:select count(sex)from passenger where sex='female';
i:select pnr_no,name from passenger order by name asc;
j:select ticket_no from passenger where name like 's%h';