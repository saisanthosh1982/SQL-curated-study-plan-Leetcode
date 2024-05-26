/*1251. Average Selling Price
Table: Prices

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| start_date    | date    |
| end_date      | date    |
| price         | int     |
+---------------+---------+
(product_id, start_date, end_date) is the primary key (combination of columns with unique values) for this table.
Each row of this table indicates the price of the product_id in the period from start_date to end_date.
For each product_id there will be no two overlapping periods. That means there will be no two intersecting periods for the same product_id.
 

Table: UnitsSold

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| purchase_date | date    |
| units         | int     |
+---------------+---------+
This table may contain duplicate rows.
Each row of this table indicates the date, units, and product_id of each product sold. 
 

Write a solution to find the average selling price for each product. average_price should be rounded to 2 decimal places.

Return the result table in any order.*/

-- Write your MySQL query statement below

select P.product_id,IFNULL(round(sum(P.price* U.units)/sum(U.units),2),0) as average_price
from Prices P left join UnitsSold U on P.product_id = U.product_id
AND U.purchase_date between P.start_date and P.end_date 
group by P.product_id;
-- selecting the product id and average selling price where joining the tables prices an purchase date on product_id and selecting the purchase date between start_date and end_date
-- giving a value of 0 to handle the null value