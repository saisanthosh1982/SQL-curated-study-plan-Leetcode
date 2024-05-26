/* 584. Find Customer Referee
Table: Customer

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
| referee_id  | int     |
+-------------+---------+
In SQL, id is the primary key column for this table.
Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
 

Find the names of the customer that are not referred by the customer with id = 2.

Return the result table in any order.

The result format is in the following example.*/

-- Write your MySQL query statement below

SELECT name -- selecting the name column from the table customer
FROM Customer -- selecting the table customer
WHERE referee_id != 2 OR referee_id IS NULL; 

-- givng a condition where customer is not referred by id = 2,
-- here we need to take null as well beacuse where clause will not take null values in while givng the result