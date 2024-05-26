/* Rising Temperature
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the column with unique values for this table.
There are no different rows with the same recordDate.
This table contains information about the temperature on a certain day.
 

Write a solution to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.*/

-- Write your MySQL query statement below
select distinct A.id
from Weather A join Weather B
where DATEDIFF(A.Recorddate, B.Recorddate) = 1 and A.temperature > B.temperature
-- here we need to find the ids on the particular day where the temperature is greater than the previous day