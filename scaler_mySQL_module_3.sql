show databases;
use classicmodels;

/*----------------------------*/
select * from employees;
select * from payments;

-- inner join
select payments.customerNumber, paymentDate, amount, customerName from payments inner join customers on payments.customerNumber = customers.customerNumber;

-- join multiple tables
select orderNumber, status, o.customerNumber, c.customerName, c.salesRepEmployeeNumber, e.jobTitle, e.FirstName from orders o join customers c on o.customerNumber = c.customerNumber join employees e on c.salesRepEmployeeNumber = e.employeeNumber;

-- self join
select emp.employeeNumber, emp.firstName, emp.jobTitle, mgr.firstName as mgr_name, mgr.jobTitle as mgr_jobtitle from employees emp join employees mgr on emp.reportsTo = mgr.employeeNumber;

-- implicit join 
select payments.customerNumber, paymentDate, amount, customerName from payments, customers where payments.customerNumber = customers.customerNumber;

-- outer join
select c.customerNumber, customerName, o.orderNumber from customers c left join orders o on c.customerNumber = o.customerNumber ;

-- self outer join
select emp.employeeNumber, emp.firstName, emp.jobTitle, mgr.firstName as mgr_name, mgr.jobTitle as mgr_jobtitle from employees emp left join employees mgr on emp.reportsTo = mgr.employeeNumber;

-- using clause
select c.customerNumber, customerName, o.orderNumber from customers c left join orders o using (customerNumber) ;

-- natural joins
select orderNumber, customerName, customerNumber from orders natural join customers;

