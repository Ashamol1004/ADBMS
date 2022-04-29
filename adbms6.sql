create table Students (studid int primary key,name varchar(10),class varchar(5),city varchar(10),total_marks int,percentage int,deptid int);
create table Stafs (staffid int primary key,name varchar(10),deptid int,designation varchar(20),salary int,city varchar(20));
create table Departments (deptid int primary key,name varchar(10));
create table Companys (compid int primary key, name varchar(5), city varchar(5), no_of_employees int);
create table Employeee (empid int primary key, name varchar(10), compid int references Companys(compid), designation varchar(10), salary int, city varchar(5));


insert into Students values(16,'asha','s2','tvm',80,70,104);
insert into Students values(21,'athira','s3','kollam',75,65,103);
insert into Students values(9,'anisree','s4','kochi',100,90,101);
insert into Students values(37,'rehna','s1','tvm',65,55,105);
insert into Students values(44,'vinitha','s6','kozhikode',90,80,102);




insert into Stafs values(1,'aparna',104,'teacher',50000,'tvm');
insert into Stafs values(52,'anju',103,'Asst Professor',20000,'pettah');
insert into Stafs values(93,'arjun',101,'Associate Professor'',35000,'palayam');
insert into Stafs values(74,'aromal',105,'hod',100000,'pattom');
insert into Stafs values(35,'asifa',102,'Professor',45000,'palode');

       


insert into Departments values(104,'mca');
insert into Departments values(10,'cse');
insert into Departments values(101,'mech');
insert into Departments values(105,'mba');
insert into Departments values(102,'bt');











