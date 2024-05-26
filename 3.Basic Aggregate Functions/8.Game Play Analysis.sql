/*550. Game Play Analysis IV
Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key (combination of columns with unique values) of this table.
This table shows the activity of players of some games.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on someday using some device.
 

Write a solution to report the fraction of players that logged in again on the day after the day they first logged in, 
rounded to 2 decimal places. In other words, you need to count the number of players that logged in for at least two consecutive days starting from their first login date, 
then divide that number by the total number of players.*/

-- Write your MySQL query statement below
select round(sum(case when datediff(t1.event_date,t2.first_event)=1 then 1 else 0 end)/count(distinct t1.player_id),2) as fraction 
from activity as t1
join
    (select player_id,min(event_date) as first_event 
    from activity 
    group by player_id) as t2
    on t1.player_id = t2.player_id;