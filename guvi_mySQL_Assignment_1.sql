show databases;
create database guvi_prac;
use guvi_prac;
CREATE TABLE t2 (
    srno INT,
    fname VARCHAR(10),
    mname VARCHAR(10),
    lname VARCHAR(10),
    age INT,
    city VARCHAR(10),
    state VARCHAR(15),
    gender VARCHAR(10),
    bloodgroup VARCHAR(5),
    address VARCHAR(50)
);
show fields from t2;

insert into t2 values('1','sayli','rajendra','dholam','21','mumbai','maharashtra','female','A','abcdefg');
SELECT 
    *
FROM
    t2;
SELECT 
    fname, lname
FROM
    t2;

