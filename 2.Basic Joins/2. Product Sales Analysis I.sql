/* 1068. Product Sales Analysis I
Table: Sales

+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+
(sale_id, year) is the primary key (combination of columns with unique values) of this table.
product_id is a foreign key (reference column) to Product table.
Each row of this table shows a sale on the product product_id in a certain year.
Note that the price is per unit.
 

Table: Product

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+
product_id is the primary key (column with unique values) of this table.
Each row of this table indicates the product name of each product.
 

Write a solution to report the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.*/

-- Write your MySQL query statement below

select P.product_name,S.year,S.price
from Sales S Join Product P on S.product_id = P.product_id
-- select product and its sold year and price from Sales and Product with inner join as product_name is in Products table we need to perform inner join with Sales table