show databases;
create database sathyabama;
use sathyabama;
create table persons(
pid int primary key,
pname varchar(20) not null,
pemail varchar(20) unique,
pno int unique
);
insert into persons values(101,'manaswi','abc@gmail.com',1470),
(102,'vinne','def@gmail.com',2580),
(103,'harika','ghi2@gmail.com',3690),
(104,'meghana','jkl2@gmail.com',7410),
(105,'lalli','mno@gamil.com',8502);
select * from persons;

#in operator
select  * from persons where pid in (101,103);
SELECT pemail FROM persons WHERE pname IN ('harika');
