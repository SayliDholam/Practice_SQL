show databases;
use adms;

CREATE TABLE Bookshelf (
    title VARCHAR(60) NOT NULL,
    publisher VARCHAR(40) NOT NULL,
    category VARCHAR(30),
    rating DECIMAL(5 , 2 ) NOT NULL
);

alter table Bookshelf partition by list columns(category)(
partition tech values in ('TECHNOLOGY'),
partition quant values in ('QUANTITATIVE'),
partition logic values in ('LOGICAL'),
partition myth values in ('MYTHOLOGY')
);

insert into Bookshelf values ('Book1', 'Publisher1', 'TECHNOLOGY', 4.5);
insert into Bookshelf values ('Book2', 'Publisher2', 'TECHNOLOGY', 4.8);
insert into Bookshelf values ('Book3', 'Publisher3', 'QUANTITATIVE', 3.7);
insert into Bookshelf values ('Book4', 'Publisher4', 'QUANTITATIVE', 5.0);
insert into Bookshelf values ('Book5', 'Publisher5', 'LOGICAL', 2.9);
insert into Bookshelf values ('Book6', 'Publisher6', 'LOGICAL', 3.2);
insert into Bookshelf values ('Book7', 'Publisher7', 'MYTHOLOGY', 4.0);
insert into Bookshelf values ('Book8', 'Publisher8', 'MYTHOLOGY', 3.5);

select * from Bookshelf;

select * from Bookshelf partition (tech);
select * from Bookshelf partition (quant);
select * from Bookshelf partition (logic);
select * from Bookshelf partition (myth);

select table_name, partition_name, table_rows
from information_schema.partitions
where table_name = 'Bookshelf';


