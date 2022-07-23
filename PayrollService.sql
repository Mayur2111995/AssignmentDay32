create database payrollService;
show databases;
use payrollService;

create table employeePayroll (id int primary key auto_increment, name varchar(20), salary varchar(20),
startDate varchar(20));
desc employeePayroll;

insert into employeePayroll (name,salary,startDate) values ('Mayur','30000','1-1-2022'), ('Supriya','40000','10-2-2022'), 
('Sarang', '50000', '25-2-2022'), ('Deepika', '40000', '10-2-2022'); 
select *from employeePayroll;
select salary from employeePayroll where name = 'Mayur';
select salary from employeePayroll where name = 'Sarang';
select*from employeePayroll where startDate between cast('10-2-2022' as date) and date(now());

alter table employeePayroll add gender varchar(1);
update employeePayroll set gender = 'M' where id = '1' or id = '3' or id = '2';
update employeePayroll set gender = 'F' where id = '4' ;

update employeePayroll set name = 'Prajakta' where id = '4'; 
select min(salary) from employeePayroll;
select max(salary) from employeePayroll;
select avg(salary) from employeePayroll;
select count(*) from employeePayroll;
select sum(salary) from employeePayroll where gender = 'F' group by gender;
select sum(salary) from employeePayroll where gender = 'M' group by gender;

alter table employeepayroll add phoneNum varchar(20);
alter table employeepayroll add address varchar(20);
alter table employeepayroll add dept varchar(20);
update employeepayroll set phoneNum = '9067853113' where id = '1';
update employeepayroll set phoneNum = '7972121283' where id = '2';
update employeepayroll set phoneNum = '9561484100' where id = '3';
update employeepayroll set address = 'Mumbai' where id ='1';
update employeepayroll set address = 'Shirpur' where id = '2';
update employeepayroll set address = 'Nagpur' where id = '3';
update employeepayroll set dept = 'Sales' where id ='1';
update employeepayroll set dept = 'HR' where id = '2';
update employeepayroll set dept = 'Store' where id = '3';
alter table employeepayroll drop phoneNum;

alter table employeepayroll add column basicPay varchar(40), add column deducions varchar(40),
add column taxablePay varchar(40),add column incomeTax varchar(40), add column netPay varchar(40);
update employeepayroll set deducions = '6k' where id = '1';
update employeepayroll set basicPay = '2k' where id = '1';
update employeepayroll set taxablePay = '3k' where id = '1';
update employeepayroll set incomeTax = '4k' where id = '1';
update employeepayroll set netPay = '5k' where id = '1';
update employeePayroll set name = 'Terisa' where id = '4'; 
update employeepayroll set gender ='F' where id = '4';

create table employeeDept ( emp_id int primary key auto_increment,
dept_id int, designation varchar(40),
foreign key (dept_id) references employeePayroll(id));
desc employeeDept;

insert into employeeDept (emp_id,dept_id,designation)
values(1,1,'Manager'),(2,2,'Developer'),(3,3,'DevOps');
select *from employeeDept;

select name, dept,salary,designation,gender from employeeDept
inner join employeePayroll ON employeePayroll.id=employeeDept.dept_id;