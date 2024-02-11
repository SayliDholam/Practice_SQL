show databases;
create database adms;
use adms;

CREATE TABLE Customer1 (
    cid INT NOT NULL,
    fname VARCHAR(20),
    mname VARCHAR(20),
    lname VARCHAR(20),
    address VARCHAR(20)
);

alter table Customer1 partition by range (cid)(
    partition c100 values less than (100),
    partition c200 values less than (200),
    partition cother values less than (maxvalue)
);

insert into Customer1 values(15, 'sayli', 'rajendra', 'dholam', 'mumbai');
insert into Customer1 values(515, 'aditi', 'jayesh', 'lakhan', 'goa');
insert into Customer1 values(380, 'shrikant', 'rajendra', 'dholam', 'usa');
insert into Customer1 values(270, 'ayush', 'ashokkumar', 'mishra', 'mumbai');
insert into Customer1 values(140, 'prathamesh', 'mukesh', 'soparkar', 'mumbai');

select * from Customer1;

select * from Customer1 partition(c100);
select * from Customer1 partition(c200);
select * from Customer1 partition(cother);

SELECT 
    table_name, partition_name, table_rows
FROM
    information_schema.partitions
WHERE
    table_name = 'Customer1';



