/*620. Not Boring Movies
Table: Cinema

+----------------+----------+
| Column Name    | Type     |
+----------------+----------+
| id             | int      |
| movie          | varchar  |
| description    | varchar  |
| rating         | float    |
+----------------+----------+
id is the primary key (column with unique values) for this table.
Each row contains information about the name of a movie, its genre, and its rating.
rating is a 2 decimal places float in the range [0, 10]
 

Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".

Return the result table ordered by rating in descending order.*/

-- Write your MySQL query statement below

select *
from Cinema
where description not like '%boring%' and id % 2 != 0 
order by rating desc
-- returning the movies that are not boring and Id number being odd(id % 2 != 0)