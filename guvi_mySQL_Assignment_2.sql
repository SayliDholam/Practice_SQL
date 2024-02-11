create database student ;
show databases;
use student;
create table s1(name varchar(10), rollno int, class int);
insert into s1 values('ankita','12','6');
insert into s1 values('keshav','4','9');
select * from s1;

create database employee ;
show databases;
use employee;
create table e1(id int, ename varchar(10), position varchar(15));
insert into e1 values('154','samir','director');
insert into e1 values('733','sanika','opr head');
select * from e1;

create database production ;
show databases;
use production;
create table p1(pid int, pname varchar(10));
insert into p1 values('642','shampoo');
insert into p1 values('824','soaps');
select * from p1;

show databases;
use student;
select * from s1;
use employee;
select * from e1;
use production;
select * from p1;

use student;
drop table s1;

use production;
alter table p1 add psector varchar(15);
desc p1;
select * from p1;

/*--------------------------------------------------------------*/

create database Company;
show databases;
use Company;
create table Employee(id int primary key, fname varchar(10));
desc Employee;

/*-----------------------------------------------------------------*/

show databases;
use student;
create table Student(name varchar(10), rollno int, class int);
insert into Student values('ankita','12','6');
insert into Student values('keshav','4','9');
select * from Student;
select count(*) from Student;
select distinct name,rollno,class from Student;

/*--------------------------------------------------------------*/

