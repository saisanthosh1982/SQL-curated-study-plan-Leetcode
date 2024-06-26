/*1193. MOntly Transactions I
Table: Transactions

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| country       | varchar |
| state         | enum    |
| amount        | int     |
| trans_date    | date    |
+---------------+---------+
id is the primary key of this table.
The table has information about incoming transactions.
The state column is an enum of type ["approved", "declined"].
 

Write an SQL query to find for each month and country, the number of transactions and their total amount, the number of approved transactions and their total amount.

Return the result table in any order.*/

-- Write your MySQL query statement below
select Date_format(trans_date,'%Y-%m') as month,
       country,
       count(*) as trans_count,
       count(CASE when state like '%approved%' then 1 else null end) as approved_count,
       sum(amount) as trans_total_amount,
       sum(CASE when state like '%approved%' then amount else 0 end) as approved_total_amount
from transactions
group by month,country