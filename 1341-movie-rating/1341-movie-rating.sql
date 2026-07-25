# Write your MySQL query statement below

(
SELECT u.name AS results
FROM MovieRating mr
JOIN Users u
ON mr.user_id = u.user_id
GROUP BY mr.user_id, u.name
ORDER BY COUNT(*) DESC, u.name
LIMIT 1
)

UNION ALL

(
SELECT m.title AS results
FROM MovieRating mr
JOIN Movies m
ON mr.movie_id = m.movie_id
WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
GROUP BY mr.movie_id, m.title
ORDER BY AVG(rating) DESC, m.title
LIMIT 1
);