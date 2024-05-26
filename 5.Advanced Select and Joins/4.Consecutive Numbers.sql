/* 180. Cosecutive Numbers
Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column.
 

Find all numbers that appear at least three times consecutively.

Return the result table in any order.*/

-- Write your MySQL query statement below
select distinct a.num as ConsecutiveNums
from logs a 
     join logs b on a.id = b.id+1 and a.num = b.num
     join logs c on b.id =  c.id+1 and b.num = c.num