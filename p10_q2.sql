show databases;
use adms;


CREATE TABLE Purchase (
    transid INT NOT NULL,
    cust_id INT,
    inv_date DATE,
    cust_name VARCHAR(30)
);

alter table Purchase partition by range(year(inv_date))
(
partition p1 values less than (2009),
partition p2 values less than (2010),
partition p3 values less than (2011),
partition pother values less than (maxvalue)
);

insert into Purchase values (1, 585, '2005-03-18', 'Elena Gilbert');
insert into Purchase values (2, 747, '2009-04-12', 'Damon Salvatore');
insert into Purchase values (3, 957, '2010-07-28', 'Caroline Forbes');
insert into Purchase values (4, 585, '2011-02-20', 'Klaus Mikaelson');
insert into Purchase values (5, 1005, '2014-05-19', 'Katherine Pierce');
insert into Purchase values (6, 182, '2017-09-09', 'Stefan Salvatore');

SELECT * FROM Purchase;

alter table Purchase reorganize partition pother into(
partition p2011 values less than (2012),
partition p2012_others values less than (maxvalue)
);


SELECT 
    table_name, partition_name, table_rows
FROM
    information_schema.partitions
WHERE
    table_name = 'Purchase';


SELECT * FROM Purchase PARTITION (p1);
SELECT * FROM Purchase PARTITION (p2);
SELECT * FROM Purchase PARTITION (p3);
SELECT * FROM Purchase PARTITION (p2011);
SELECT * FROM Purchase PARTITION (p2012_others);

SELECT 
    COUNT(*) AS transactions_2009
FROM
    Purchase PARTITION (p2);


/*ANALYZE TABLE Purchase;*/

