/* 1148. Article Views I
Table: Views

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
There is no primary key (column with unique values) for this table, the table may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.
 

Write a solution to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.

The result format is in the following example.*/

SELECT distinct author_id as id
FROM Views
WHERE author_id = viewer_id
Order by author_id;

-- selecting the author_id from views  where taking all the authors who has viewed their own article,
-- and we need to result the author_id in ascending order so we need to use order by statement.