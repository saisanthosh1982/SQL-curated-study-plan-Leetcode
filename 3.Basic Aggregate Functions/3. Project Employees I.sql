/*Table: Project

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| project_id  | int     |
| employee_id | int     |
+-------------+---------+
(project_id, employee_id) is the primary key of this table.
employee_id is a foreign key to Employee table.
Each row of this table indicates that the employee with employee_id is working on the project with project_id.
 

Table: Employee

+------------------+---------+
| Column Name      | Type    |
+------------------+---------+
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |
+------------------+---------+
employee_id is the primary key of this table. It's guaranteed that experience_years is not NULL.
Each row of this table contains information about one employee.
 

Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

Return the result table in any order.*/

-- Write your MySQL query statement below

select P.project_id,round(sum(E.experience_years)/count(P.project_id),2) as average_years
from Project P join Employee E on P.employee_id = E.employee_id
where E.experience_years in 
( select case when experience_years is null then 0
              else experience_years end as years
              from Employee)
group by P.project_id
-- we are taking inner query where experience_years is null then return 0 else value to calculate the average effectivley and give the output