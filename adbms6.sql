create table Students (studid int primary key,name varchar(10),class varchar(5),city varchar(10),total_marks int,percentage int,deptid int);
create table Stafs (staffid int primary key,name varchar(10),deptid int,designation varchar(20),salary int,city varchar(20));
create table Departments (deptid int primary key,name varchar(10));
create table Companys (compid int primary key, name varchar(10), city varchar(10), no_of_employees int);
create table Employeee (empid int primary key, name varchar(10), compid int references Companys(compid), designation varchar(10), salary int, city varchar(5));


insert into Students values(16,'asha','s2','tvm',80,70,104);
insert into Students values(21,'athira','s3','kollam',75,65,103);
insert into Students values(9,'anisree','s4','kochi',100,90,101);
insert into Students values(37,'rehna','s1','tvm',65,55,105);
insert into Students values(44,'vinitha','s6','kozhikode',90,80,102);


 select * from Students;

STUDID NAME       CLASS CITY       TOTAL_MARKS PERCENTAGE     DEPTID
------ ---------- ----- ---------- ----------- ---------- ----------
    16 asha       s2    tvm                 80         70        104
    21 athira     s3    kollam              75         65        103
     9 anisree    s4    kochi              100         90        101
    37 rehna      s1    tvm                 65         55        105
    44 vinitha    s6    kozhikode           90         80        102



insert into Stafs values(1,'aparna',104,'teacher',50000,'tvm');
insert into Stafs values(52,'anju',103,'Asst Professor',20000,'pettah');
insert into Stafs values(93,'arjun',101,'Associate Professor'',35000,'palayam');
insert into Stafs values(74,'aromal',105,'hod',100000,'pattom');
insert into Stafs values(35,'asifa',102,'Professor',45000,'palode');

 select * from Stafs;

   STAFFID NAME           DEPTID DESIGNATION              SALARY
---------- ---------- ---------- -------------------- ----------
CITY
--------------------
         1 aparna            104 teacher                   50000
tvm

        52 anju              103 Asst Professor            20000
pettah

        74 aromal            105 hod                      100000
pattom

    35 asifa             102 Professor                 45000
palode

       
insert into Departments values(104,'mca');
insert into Departments values(10,'cse');
insert into Departments values(101,'mech');
insert into Departments values(105,'mba');
insert into Departments values(102,'bt');



 select * from Departments;

DEPTI NAME
----- ----------
104   mca
10    cse
101   mech
105   mba
102   bt


insert into Companys values(1001,'tcs','tvm',200);
insert into Companys values(1002,'wipro','kochi',150);
insert into Companys values(1003,'ust','plkd',100);
insert into Companys values(1004,'ibm','eklm',50);
insert into Companys values(1005,'infos','trisr',10);

select * from companys;

COMPID NAME  CITY  NO_OF_EMPLOYEES
------ ----- ----- ---------------
  1001 tcs   tvm               200
  1002 wipro kochi             150
  1003 ust   plkd              100
  1004 ibm   eklm               50
  1005 infos trisr              10


insert into Employeee values(5000,'amritha',1001,'sw-engg',20000,'palode');
insert into Employeee values(5001,'anila',1002,'developer',25000,'tvm');
insert into Employeee values(5002,'sunitha',1003,'tester',15000,'anad');
insert into Employeee values(5003,'aron',1004,'designer',10000,'ndd');
insert into Employeee values(5004,'john',1005,'peon',5000,'vtra');


 select * from Employeee;

 EMPID NAME           COMPID DESIGNATIO     SALARY CITY
------ ---------- ---------- ---------- ---------- -----
  5001 anila            1002 developer       25000 tvm
  5002 sunitha          1003 tester          15000 anad
  5003 aron             1004 designer        10000 ndd
  5004 john             1005 peon             5000 vtra


3. a)display students who belonging to mca pepartment.
	select * from Students,Departments where Students.deptid=Departments.deptid and Departments.name='mca';

8. create a view on employee table whose designation is manager  and update the salary of such employees by 10.5% without changing the salary in employee table
       create view designation as select salary+salary*.01 as newsal,designation from employeee where designation='manager';

       View created.












