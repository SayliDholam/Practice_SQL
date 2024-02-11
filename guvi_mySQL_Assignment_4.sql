show databases;
use guvi_prac;
create table t1(id int, name varchar(10), age int);
insert into t1 values('1','Vinodini','25');
insert into t1 values('2','Banu','27');
insert into t1 values('3','Kaushik','23');
insert into t1 values('4','Praveen','25');
insert into t1 values('5','Kamal','22');
insert into t1 values('6','Malini','24');
insert into t1 values('7','Ramesh','32');
select * from t1;
select * from t1 order by name asc;

/*----------------------------------------------------------*/

select * from t1 where age=32 or age=22;

/*-----------------------------------------------------------*/

select name from t1 where age<25 and age>30;

/*------------------------------------------------------------*/
