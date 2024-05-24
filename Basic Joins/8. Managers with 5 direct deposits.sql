/*570. Mangers with at least 5 direct reports
Table: Employee

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| department  | varchar |
| managerId   | int     |
+-------------+---------+
id is the primary key (column with unique values) for this table.
Each row of this table indicates the name of an employee, their department, and the id of their manager.
If managerId is null, then the employee does not have a manager.
No employee will be the manager of themself.
 

Write a solution to find managers with at least five direct reports.

Return the result table in any order.*/

-- Write your MySQL query statement below
select A.name
from Employee A join Employee B on A.id = B.managerId
group by A.id
having count(*) >=5
-- selecing all the name of managers by using self join on table employee having count greather than 5