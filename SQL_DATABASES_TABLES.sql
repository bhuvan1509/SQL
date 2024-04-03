#sql assignment-1 

CREATE DATABASE sqldb1;
CREATE DATABASE sqldb2;
CREATE DATABASE sqldb3;
CREATE DATABASE sqldb4;
CREATE DATABASE sqldb5;
-- -------------------------------------------------------------------------------------------------------------------------------------------------------
USE sqldb1;

CREATE TABLE details1(id int, name VARCHAR(20),age int);
CREATE TABLE details2(id int, name VARCHAR(20),age INTEGER);

#Multiple rows INSERTING
INSERT INTO details1(id , name , age)
VALUES (1,'nikhil',25),(2,'murali',24),(3,'sai',21);

INSERT INTO details2(id,name,age)
values (1,'kick',10);

INSERT INTO details2(id,name,age)
values (2,'maruthi',10);


show tables;
select *  from details1;
SELECT * FROM details2;


CREATE TABLE duplicate_2 ( id INT , name VARCHAR(20), age INT);

INSERT INTO duplicate_2 SELECT * from DETAILS2;
show tables;
select * from duplicate_2; -- since we inserted tow times
-- -------------------------------------------------------------------------------------------------------------------------------------------------------

USE sqldb2;
CREATE table s_details(roll int, name varchar(20), lastname char);
CREATE TABLE s_details2(roll int,name varchar(20),lastname char);
show tables;

INSERT INTO s_details(roll,name,lastname) VALUES (11,'kick','b'),(12,'nikhil','r'),(13,'yeshwanth','s');

select * from s_details;
-- -------------------------------------------------------------------------------------------------------------------------------------------------------
use sqldb3;
create table e_details (e_name varchar(20), e_id int,e_join date);
create table e_details2 (e_id int,name varchar(29),r_time datetime );

insert into e_details (e_name, e_id,e_join) 
values("kick", 111, '2021-11-15');

insert into e_details (e_name, e_id,e_join) 
values("buttoski", 222, '2022-01-25'),("mithiun" , 333 , '2125-05-26'  );

insert into e_details2(e_id,name,r_time) 
values (1,'nikhil', '2021-12-15 05:06:00'), (2, "kick", "2021-11-15 12:15:06");



-- -------------------------------------------------------------------------------------------------------------------------------------------------------
use sqldb4 ;
CREATE TABLE workers(w_name VARCHAR(20) , w_id int );
insert into workers (w_name, w_id) values ('murali ' , 1), ('sai' , 2);


show databases;

show tables;

show tables;


 
drop table workers;


-- -------------------------------------------------------------------------------------------------------------------------------------------------------

use sqldb5;
create table t1 (name varchar(30),phno varchar(10));
insert into t1 (name , phno) 
values ("naveen" , "9584615412"), ("kjsadhf","45544545") , ("fdadasd","654564654");

show tables;
select * from T1;


