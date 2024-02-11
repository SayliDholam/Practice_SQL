update Employee set address='Maharashtra' where Name='Komal';

show databases;
use guvi_prac;
select * from t2;
SET SQL_SAFE_UPDATES = 0;
update t2 set fname='shrikant' where city='mumbai';
select * from t2;
SET SQL_SAFE_UPDATES = 1;

/*---------------------------------------------------------------------*/

create database Company;
show databases;
use Company;
create table Employee(id int primary key, fname varchar(10));
desc Employee;

/*---------------------------------------------------------------------*/

show databases;
use student;
create table Student(name varchar(10), rollno int, class int);
insert into Student values('ankita','12','6');
insert into Student values('keshav','4','9');
select * from Student;
select count(*) from Student;
select distinct name,rollno,class from Student;

/*---------------------------------------------------------------*/