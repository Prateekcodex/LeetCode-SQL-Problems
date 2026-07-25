# Write your MySQL query statement below

SELECT
     Score,
DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM Scores;