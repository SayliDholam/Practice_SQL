CREATE TYPE Address AS OBJECT (
    address1 VARCHAR2(255),
    address2 VARCHAR2(255),
    state VARCHAR2(50),
    city VARCHAR2(50),
    pincode VARCHAR2(10)
);


CREATE TABLE Customer (
    Customer_id INT PRIMARY KEY,
    Customer_name VARCHAR2(255),
    Customer_address Address
);


INSERT INTO Customer (Customer_id, Customer_name, Customer_address)
VALUES
    (1, 'John Doe', Address('123 Main St', 'Apt 45', 'CA', 'San Francisco', '94105')),
    (2, 'Jane Smith', Address('456 Oak St', NULL, 'NY', 'New York', '10001')),
    (3, 'Bob Johnson', Address('789 Pine St', 'Suite 22', 'TX', 'Houston', '77002'));


SELECT * FROM Customer;


DESCRIBE Customer;
DESCRIBE Address;


SELECT c.Customer_id, c.Customer_name, c.Customer_address
FROM Customer c
WHERE c.Customer_address.city = 'Mumbai';


SELECT c.Customer_address.state, COUNT(*) AS customer_count
FROM Customer c
GROUP BY c.Customer_address.state;
