# Write your MySQL query statement below
-- Part 1: User with most ratings
SELECT name AS results
FROM (
    SELECT u.name, COUNT(*) AS cnt
    FROM MovieRating mr
    JOIN Users u ON mr.user_id = u.user_id
    GROUP BY u.name
    ORDER BY cnt DESC, u.name ASC
    LIMIT 1
) AS t1

UNION ALL

-- Part 2: Movie with highest avg rating in Feb 2020
SELECT title AS results
FROM (
    SELECT m.title, AVG(mr.rating) AS avg_rating
    FROM MovieRating mr
    JOIN Movies m ON mr.movie_id = m.movie_id
    WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
    GROUP BY m.title
    ORDER BY avg_rating DESC, m.title ASC
    LIMIT 1
) AS t2;