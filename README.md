# Practice_SQL

Welcome to the Practice_SQL Repository!.

This repository contains:

- SQL query exercises covering various topics such as SELECT statements, JOIN operations, aggregrate functions, subqueries, and more.
<br/>

### 1. SELECT Statements

The `SELECT` statement is used to retrieve data from a database. Here are some common variations:
- Basic SELECT: Retrieve all columns from a table.
  ```sql
  SELECT * FROM table_name;

- SELECT with WHERE: Retrieve specific rows based on certain conditions.
  ```sql
  SELECT column1, column2 FROM table_name WHERE condition;

- SELECT with ORDER BY: Retrieve data sorted in ascending or descending order.e.
  ```sql
  SELECT column1, column2 FROM table_name ORDER BY column1 ASC;
<br/>


### 2. JOIN Operations

JOIN operations are used to combine records from two or more tables. Common types include:
- INNER JOIN: Returns records that have matching values in both tables.
  ```sql
  SELECT table1.column, table2.column
  FROM table1
  INNER JOIN table2 ON table1.common_column = table2.common_column;

- LEFT JOIN: Returns all records from the left table and matching records from the right table.
  ```sql
  SELECT table1.column, table2.column
  FROM table1
  LEFT JOIN table2 ON table1.common_column = table2.common_column;

- RIGHT JOIN: Returns all records from the right table and matching records from the left table.
  ```sql
  SELECT table1.column, table2.column
  FROM table1
  RIGHT JOIN table2 ON table1.common_column = table2.common_column;
<br/>


### 3. Aggregate Functions
Aggregate functions perform calculations on a set of values and return a single value. <br/>
Common types include:

- COUNT(): Returns the number of rows that match a specified criterion.
   ```sql
  SELECT COUNT(column_name) AS count_alias FROM table_name WHERE condition;

- SUM(): Returns the total sum of a numeric column.
  ```sql
  SELECT SUM(column_name) AS sum_alias FROM table_name WHERE condition;

- AVG(): Returns the average value of a numeric column.
   ```sql
  SELECT AVG(column_name) AS avg_alias FROM table_name WHERE condition;
   
- MAX(): Returns the maximum value from a column.
   ```sql
  SELECT MAX(column_name) AS max_alias FROM table_name WHERE condition;
   
- MIN(): Returns the minimum value from a column.
   ```sql
  SELECT MIN(column_name) AS min_alias FROM table_name WHERE condition;
<br/>



