show databases;
use classicmodels;

 -- aggregate functions
select max(amount) , min(amount), avg(amount), sum(amount) from payments;

select count(*), count(requiredDate) , count(shippedDate) from orders;

select count(*) from orders where status = "In Process" ;

select max(paymentDate), min(paymentDate) from payments;

select max(checkNumber), min(checkNumber) from payments;


-- group by 
select count(*) from products;

select distinct productLine from products; 

select productLine, count(*) as prod_count from products group by productLine;

select officeCode, city, state, count(employeeNumber) from employees join offices using (officeCode) group by officeCode;


-- having clause
select officeCode, city, state, count(employeeNumber) as empcount from employees join offices using (officeCode) group by officeCode having empcount > 4;

select country , count(*) as totalOrders from orders join customers using (customerNumber) group by country having totalOrders > 20;


--
select customerNumber, customerName, sum(amount) from payments join customers using (customerNumber) where paymentDate > '2004-02-02' group by customerNumber;

 select orderNumber, sum(quantityOrdered * priceEach) as OrderTotal from orderDetails group by orderNumber order by OrderTotal desc;
 
 select orderNumber, customerNumber, sum(quantityOrdered * priceEach) as OrderTotal from orderDetails join orders o using (orderNumber) join customers c using (customerNumber) group by orderNumber order by OrderTotal desc;

 select orderNumber, employeeNumber, customerNumber, sum(quantityOrdered * priceEach) as OrderTotal from orderDetails join orders o using (orderNumber) join customers c using (customerNumber) join employees on c.salesRepEmployeeNumber = employees.employeeNumber group by orderNumber order by OrderTotal desc;

select customerNumber, customerName, firstName, count(*) as ordersplaced from orders join customers using (customerNumber) join employees on customers.salesRepEmployeeNumber = employees.employeeNumber group by customerNumber;

select country, count(*) as totalorders from orders join customers using (customerNumber) group by country;

select country, orderDate, count(*) as totalorders from orders join customers using (customerNumber) group by country, orderDate;

select c.customerNumber , c.customerName, sum(od.quantityOrdered * od.priceEach) as tot_or_val from customers c join orders o using (customerNumber) join orderDetails od using (orderNumber) group by c.customerNumber , c.customerName having tot_or_val > 80000;

