/*use payroll;

create table gen
(
g_id int primary key,
gend varchar(10),
)
insert into gen values (1,'Male');
insert into gen values(2,'Female');
select * from gen 
create table employee
(
id  int primary key,
fname varchar(50),
lname varchar(50),
gender int foreign key references gen(g_id),
age int,
contact varchar(15),
email varchar(100)
)

insert into employee values (1,'Ahmad','awan',1,26,'03116776543','ahmad@gmail.com')
insert into employee values (2,'Ali','Raza',1,22,'03116721543','ali@gmail.com')
insert into employee values (3,'Asma','Khalid',2,36,'03112345643','asma@gmail.com')
insert into employee values (4,'Rumaisa','awan',2,46,'03311000043','rumaisa@gmail.com')
select * from employee
create table jobs
(
j_id int primary key,
roll varchar(50),
basic_sal int,
hra int,
tax int,
meal_all int,
transpor_all int,
medical_all int,
wh int /*per week*/
)

insert into jobs values (1,'Backend Web developer',25000,9000,2000,15000,3000,5000,40)
insert into jobs values (2,'UI-UX designer',22000,6000,2134,15080,3078,5009,40)
insert into jobs values (3,'App developer',32000,3345,1000,11000,1444,4500,40)
insert into jobs values (4,'frontend Web developer',15000,5050,1045,15076,7560,5000,35)
select * from jobs

create table payroll
(
p_id int primary key,
emp_id int foreign key references employee(id),
job_id int foreign key references jobs(j_id)
)
insert into payroll values (1,1,1)
insert into payroll values (2,2,3)
insert into payroll values (3,4,2)
insert into payroll values (4,3,4)

select * from payroll

create table stat(
s_id int primary key,
nam varchar(50)
)
insert into stat values (1,'Approved')
insert into stat values (2,'Denied')
insert into stat values (3,'Decision Pending')
select * from stat
create table leave
(
l_id int primary key,
emp_id int foreign key references employee(id),
l_date date,
reason varchar(200)
)
alter table leave add [status] int foreign key references stat(s_id)
insert into leave values(1,1,'2021-11-5','Vacation',2)
select * from employee
select * from gen
select * from jobs
select * from payroll
select * from leave

alter table employee add pass varchar(255) not null default 1
*/
use payroll
insert into employee values (5,'Ahmer','awan',1,26,'03188876543','1',1)
select * from leave
Alter table payroll drop [FK__payroll__emp_id__3E52440B]
ALTER TABLE payroll 
  ADD CONSTRAINT [FK__payroll__emp_id__3E52440B]
  FOREIGN KEY (emp_id) 
  REFERENCES employee(id) 
  ON DELETE CASCADE;
  select  * from leave
  insert into leave values(3,4,'2021-11-5','Vacation',3)
  insert into leave values(2,5,'2021-11-5','Vacation',3)

  select * from employee
select * from payroll

update