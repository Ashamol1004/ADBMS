create table Students (studid int primary key,name varchar(10),class varchar(5),city varchar(10),total_marks int,percentage int,deptid varchar(5));
create table Stafs (staffid int primary key,name varchar(10),deptid varchar(5),designation varchar(10),salary int,city varchar(5));
create table Departments (deptid varchar(5) primary key,name varchar(10));
create table Companys (compid int primary key, name varchar(5), city varchar(5), no_of_employees int);
create table Employeee (empid int primary key, name varchar(10), compid int references Companys(compid), designation varchar(10), salary int, city varchar(5));
