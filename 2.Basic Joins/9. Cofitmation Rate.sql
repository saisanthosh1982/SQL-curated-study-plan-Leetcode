/*1934. Cofirmation Rate
Table: Signups

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
+----------------+----------+
user_id is the column of unique values for this table.
Each row contains information about the signup time for the user with ID user_id.
 

Table: Confirmations

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| user_id        | int      |
| time_stamp     | datetime |
| action         | ENUM     |
+----------------+----------+
(user_id, time_stamp) is the primary key (combination of columns with unique values) for this table.
user_id is a foreign key (reference column) to the Signups table.
action is an ENUM (category) of the type ('confirmed', 'timeout')
Each row of this table indicates that the user with ID user_id requested a confirmation message at time_stamp and that confirmation message was either confirmed ('confirmed') or expired without confirming ('timeout').
 

The confirmation rate of a user is the number of 'confirmed' messages divided by the total number of requested confirmation messages. The confirmation rate of a user that did not request any confirmation messages is 0. Round the confirmation rate to two decimal places.

Write a solution to find the confirmation rate of each user.

Return the result table in any order.*/

-- Write your MySQL query statement below
select S.user_id,Round(AVG(new_action),2) as confirmation_rate
from signups S join
(select S.user_id,
       Case when c.action like '%timeout%' or c.action is null then 0
            when c.action like '%confirmed%' then 1
            else null end as new_action
from Signups S left join Confirmations C
     on S.user_id = C.user_id) as A
on S.user_id = A.user_id
group by S.user_id

-- need to fing the confirmatin rate of each user_id we use case operation to take 1 if confirmed else 0 if timeout as we need to fing the confirmation rate
-- we need to use sub query to take average of the cofirmation rate and group that by user_id.