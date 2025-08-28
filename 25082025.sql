show databases;
create table sathyabama;
use sathyabama;
create table college(
cid int primary key,
cname varchar(25) not null
);
insert into college 
values
(1,'SIST'),
(2,'Anna university'),
(3,'Saveetha'),
(4,'veltech'),
(5,'vit');
show tables  from sathyabama;
select * from college;
 create table department(
 did int primary key,
 dname varchar(25) not null,
 cid int not null,
 foreign key(cid)
 references college(cid)
 on delete cascade 
 on update cascade
 );
 insert into department 
 values
 (101,'CSE',1),
 (102,'ECE',2),
 (103,'EEE',3),
 (104,'MECH',4),
 (105,'dental',5),
 (106,'IOT',2),
 (107,'AIML',4);
 select * from department;
 create table students1(
 sid int primary key,
 sname varchar(25) not null,
 did int not null,
 foreign key(did)
 references department(did)
 on delete cascade 
 on update cascade
 );
 insert into students1 values
 (2037,'harshi',101),
 (2001,'trivs',104),
 (2027,'vaishu',103),
 (2019,'teju',102),
 (2020,'aishu',105),
 (2023,'priya',102);
 select * from students1;
delete from college where cid=3;
select * from college;   