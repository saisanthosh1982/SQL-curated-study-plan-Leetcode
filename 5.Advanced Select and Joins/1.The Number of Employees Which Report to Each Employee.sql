/*1731.The Number of Employees which Report to Each Employee
Table: Employees

+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| employee_id | int      |
| name        | varchar  |
| reports_to  | int      |
| age         | int      |
+-------------+----------+
employee_id is the column with unique values for this table.
This table contains information about the employees and the id of the manager they report to. Some employees do not report to anyone (reports_to is null). 
 

For this problem, we will consider a manager an employee who has at least 1 other employee reporting to them.

Write a solution to report the ids and the names of all managers, the number of employees who report directly to them, and the average age of the reports rounded to the nearest integer.

Return the result table ordered by employee_id.*/

# Write your MySQL query statement below

SELECT e.reports_to AS employee_id,
       m.name AS name,
       COUNT(e.employee_id) AS reports_count,
       ROUND(AVG(e.age), 0) AS average_age
FROM employees AS e
JOIN employees AS m
  ON e.reports_to = m.employee_id
WHERE e.reports_to IS NOT NULL
GROUP BY e.reports_to, m.name
order by e.reports_to;