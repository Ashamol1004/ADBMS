create table departmentt(deptid int primary key,dname varchar(10),no_of_emp int);
create table employ(empid int primary key,name varchar(10),desig varchar(10),address varchar(10),deptid int 

references departmentt(deptid));
create table esalary(empid int references employ(empid),basicpay int,da int,ta int,pay int);

insert into departmentt values(01,'mca',4 );
insert into departmentt values(02,'mba',3 );
insert into departmentt values(03,'cs',2 );

insert into employ values(100,'asha','professor','tvm', 01);
insert into employ values(101,'asifa','peon','kollam',01 );
insert into employ values(102,'arjun','professor','kochi',02);

insert into esalary values(100,30000,5000,2000,100 );
insert into esalary values(101,5000,100,2000,1000 );
insert into esalary values(102,35000,6000,3000,2000 );



 select * from departmentt;
 select * from employ;
 select * from esalary;


1.select * from  employ where name like 'a%' and address='tvm';\
2.select * from  employ,departmentt where employ.deptid=departmentt.deptid and departmentt.dname='mca' and employ.desig='professor';
3.select * from departmentt where no_of_emp>3;
