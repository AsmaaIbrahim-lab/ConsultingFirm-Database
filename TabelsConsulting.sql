create database ConsultingFirm
use ConsultingFirm
create table Department 
(
Dept_Id int primary key,
DeptName varchar(50) Not null,
Location varchar (30) 
)
create table Employee
(
EmpId int primary key,
EmpName varchar (20),
Salary decimal (10,2),
Dept_id int foreign key references Department(Dept_Id),
HireDate date
)
create table Project 
(
PId int primary key ,
ProjectName varchar(30) not null,
ProjectManager int references Employee(EmpId),
ClientName varchar (30) not null,
Dept_id int references department(dept_id)
)
create table Roles
(
RoleName varchar(30) not null,
PId int references project(PId),
EmpId int references Employee(EmpId),
S_date date ,
E_date date ,
primary key(RoleName,PId,EmpId)
)
alter table Department 
add  DeptManager int foreign key references Employee(EmpId)
