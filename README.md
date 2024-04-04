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

<br/>
