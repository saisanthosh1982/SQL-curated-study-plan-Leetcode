/*1378. Replace Employee ID With The Unique Identifier
Table: Employees

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table contains the id and the name of an employee in a company.

Table: EmployeeUNI

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
(id, unique_id) is the primary key (combination of columns with unique values) for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.

Write a solution to show the unique ID of each user, If a user does not have a unique ID replace just show null.

Return the result table in any order.*/

-- Write your MySQL query statement below
select EU.unique_id,E.name
from Employees E 
     LEFT JOIN EmployeeUNI EU
     on E.id = EU.id

-- this query is basicaly does asks us to show all the unique_id of employee_id and give the null if there is no unique_id,
-- select all the unique_id and name of the employee from the tables using left join