#sql operators
create database opereators;
drop database opereators;

create database operators;
use operators;
create table numbers(num1 int,num2 int);
insert into numbers(num1,num2) values
(1,2),
(3,4),
(4,5),
(5,6);

select num1,num2,num1+num2,num1-num2,num1*num2 from numbers;

select num1,num2,num1+num2 as sum,num1-num2 as diff,num1*num2 as mul,num1%num2 as rem from numbers;

create table products (pid int,pcost int ,name varchar(20),stock_price int);

insert into products (pid,pcost,name,stock_price) 
values (1,50 ,'hijack',22),
(2,60,"oil",60),
(3,44,'pizza',100),
(4,88,'rice', 50);

select * from products where pcost =50;

select * from products where stock_price <=100;

#logical operators

create table employees (id int auto_increment,fname varchar(30),lname varchar(30),dept varchar(30), salary int, primary key(id));
drop table employees;
insert into employees (id,fname,lname,dept,salary) 
values (1,'kick','buttoski','ele',50000),
(2,"tuniki",'bhuvan','cse',600000),
(3,'john','wick','mech',30000);

insert into employees (id,fname,lname,dept,salary) 
values (4,'kick','buttoski','ele',null),
(5,"tuniki",'bhuvan',null,600000),
(6,'john','wick','mech',null);
select * from employees;
select id,concat(fname,' ',lname) as fullname from employees where salary is null or dept is null;

#logical(and,or,not),like ,concatinantion,
select id,concat(fname,' ',lname) as fullname from employees where salary > 30000 and dept = "mech"; #empty

select id,concat(fname,' ',lname) as fullname from employees where salary > 30000 and dept != "mech"; #2 rows

select id,concat(fname,' ',lname) as fullname from employees where salary > 30000 or dept = "mech"; #3 rows
#not operator
select id,concat(fname,' ',lname) as fullname from employees where not dept = "mech" or dept = null;

#is null, is not null
select id,fname  from employees where salary is null;
select id,fname  from employees where salary is not null;

#in ,not in (from employeeee table )
select id,fname  from employees where id in (select id from employeeee );
select id, lname from employees where id not in (select id from employeeee);

select * from employees where salary in ( 30000,40000,500000,null);
select * from employees where dept not in ("mech");

select * from employees where fname between "bhuvan" and "kick";   #but bhuvan will not be there  in the list

select id, fname || " " || lname as fullname from employees where fname like '%ck'; # like and concat usinfg || operator

select id , concat(fname , "  ", lname )as fullname from employees where salary = 30000 and dept <> 'cse';









#auto increment
create table employeeee (id int not null auto_increment,name varchar(39) ,primary key(id));
drop table employeeee;
insert into employeeee(name)
values("bhuvan"),
('kick'),
("vamsi");
select * from employeeee;




#wild card characteres %,-,_,[],^,{}

select * from employees where fname like '_ick';

select * from employees where fname like '__ck';

select * from employees where fname like '[kjbht]%';


