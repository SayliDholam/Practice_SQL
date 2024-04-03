show databases;
use classicmodels;

-- subqueries 
select productName from products where productLine = (select productLine from products where productName = "1917 Grand Touring Sedan");

select * from products where productLine regexp "car" and msrp > (
select MSRP from products where productName = "1936 Mercedes-Benz 500K Special Roadster");

select * from products where productLine regexp "car" and msrp > (
select avg(msrp) from products where productLine in ("Classic Cars", "Vintag Cars"));

select count(customerName) from customers where customerNumber not in (
select distinct customerName from orders);

select customerNumber from customers left join orders using (customerNumber) where orderNumber is null;


-- all keyword
select * from products where msrp > all(select msrp from products where productLine regexp "truck");


-- any keyword
select * from customers where customerNumber = any( 
select customerNumber from payments group by customerNumber having count(*) >=2);


-- correlated subquery
select * from products p where msrp > (
select avg(msrp) from products where productLine = p.productLine);


-- exists operator
 select * from customers c where exists (
 select customerNumber from payments where customerNumber = c.customerNumber);
 
 
 -- subquery in select
SELECT *,
  (SELECT AVG(amount) FROM payments) AS avg_payment,
  amount - (SELECT AVG(amount) FROM payments) AS diff
FROM payments;


-- subquery in from

