# 3 tables ,3 constraints

create database sqlconstraints;
use sqlconstraints;

create table con1 ( d1 int not null , d2 varcharacter(20) unique ,d3 int unique,d4 int );

insert into con1 (d1,d2,d3,d4)
values (1,'hfsjkahdf', 4, 5),
(2 , 'hdfjkahsd', 2,3),
(3,'dgfg',5,5);

alter table con1 add constraint comb unique(d1);
desc con1;

alter table con1 add constraint comb2 unique(d2,d4);
desc con1;


alter table con1 add constraint comb3 unique(d4 , d3);
-- alter table con1 alter column d2 set unique;

alter table con1 drop constraint comb;
alter table con1 drop constraint comb3;
desc con1;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------
create table con2 (i1 int1 primary key, i2 varcharacter(29), i3 int unique , i4 bool not null);
insert into con2 (i1,i2,i3,i4)  
values (1 , 'skjdf', 4 , True),
(2 , 'akjdfkl' , 3 , False),
(3 , 'third', 5 , True);

select * from con2;
desc con2;

alter table con2 add constraint unique(i2,i4);
desc con2;

alter table con2 drop constraint i2;
alter table con2 drop constraint i3;
desc con2;

-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------

-- table 3
-- pri -> uniq + not null
create table con3(k1 int primary key , k2 int , k3 char, k4 varchar(39));
desc con3;
insert into con3 (k1 , k2, k3, k4)
values (1 , 2, 'A' , 'first record'),
(2 , 3 , 'B' , 'second record '),
(3, 4 , 'C' , 'third Recors');

alter table con3 add constraint c1 unique(k2,k3);
desc con3;

alter table con3 add constraint c2 unique(k3 , k4);
desc con3;

alter table con3 add constraint c3 unique(k4);
desc con3;

alter table con3 drop constraint c3;
desc con3;
alter table con3 drop constraint c2;

alter table con3 drop constraint c1;

desc con3;

drop table con3;

create table con3(k1 int, k2 int , k3 char, k4 varchar(39));
alter table con3 add constraint pk_val primary key(k1);
desc con3;

alter table con3 drop constraint pk_val;

