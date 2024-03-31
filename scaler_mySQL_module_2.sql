show databases;
use classicmodels;

/*----------------------------*/
select * from employees;

select firstName, lastName from employees where officeCode = 1 order by firstName;

select lastName, email from employees;

select productCode, ProductName, buyPrice, MSRP as "SellingPrice" , (MSRP*0.09 + 5) as "DiscountPrice" from products ;


/*----------------------------*/
select * from orders;

select * from orders where status = "Shipped";

select * from orders where status != "Shipped";


/*----------------------------*/
select * from payments where amount > 40000;

select * from payments where amount > 40000 and amount <= 60000;

select * from payments where not (amount > 40000 and amount <= 60000) ;

select * from payments where (amount < 40000 or amount >= 60000) and paymentDate >= '2005-05-25';


/*----------------------------*/
select * from employees;

select * from employees where officeCode = 1 or officeCode = 2 or officeCode = 3;

select * from employees where officeCode in (1,2,3,4,5) order by OfficeCode;

select * from employees where officeCode not in (1,2,3,4,5) order by OfficeCode;


/*----------------------------*/
select * from customers;

select * from customers where creditLimit >= 20000 and creditLimit <= 60000;

select * from customers where creditLimit between 20000 and 50000;

select * from payments;

select * from payments where paymentDate between '2003-06-05' and '2004-10-19' ;


/*----------------------------*/
select * from employees;

select firstName, jobTitle from employees where jobTitle like "%Sale%" ;

select firstName, jobTitle from employees where jobTitle like "Sale%" ;

select firstName, jobTitle from employees where jobTitle like "%Sale" ;

select firstName, jobTitle from employees where firstName like "____y" ;


/*----------------------------*/
-- regex operator

-- ^ begin of string
-- $ ending of string
-- ! logical or
-- [abcd] 
-- [a-z]


/*----------------------------*/
select * from employees;

select firstName, jobTitle from employees where jobTitle regexp "sale";

select firstName, jobTitle from employees where jobTitle regexp "^sale";

select firstName, jobTitle from employees where jobTitle regexp "rep$";

select firstName, jobTitle from employees where firstName regexp "^a|^b";

select firstName, jobTitle from employees where firstName regexp "^[d-h]";

select firstName, jobTitle from employees where firstName regexp "^[a-h]|lie$";


/*----------------------------*/
select * from orders;

select orderNumber, comments from orders where comments is null;

select orderNumber, comments from orders where comments is not null;

select orderNumber, shippedDate from orders where shippedDate is null;


/*----------------------------*/
select * from customers;

select customerNumber, customerName, contactFirstName from customers order by contactFirstName desc;

select customerNumber, contactFirstName, city from customers order by city , contactFirstName;


/*----------------------------*/
select * from customers;

select customerNumber, customerName from customers limit 10;

select customerNumber, customerName from customers limit 50, 10;

select customerNumber, customerName from customers order by creditLimit desc limit 5;

