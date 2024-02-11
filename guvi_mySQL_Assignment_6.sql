show databases;
use guvi_prac;
create table t3(id int auto_increment primary key, name varchar(10), age int);
desc t3;
select * from t3;

/*----------------------------------------------------------------------------*/

create view v1 as select name from t3;
select * from v1;

/*----------------------------------------------------------------------------*/

create table guvi(course varchar(30), enroll int);
desc guvi;
create index i1 on guvi(course);
desc guvi;
alter table guvi drop index i1;
desc guvi;

/*------------------------------------------------------------------------------*/
