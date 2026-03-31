# Write your MySQL query statement below
SELECT activity_date as day,
COUNT(distinct user_id) as active_users
FROM Activity
WHERE activity_date BETWEEN date_sub('2019-07-27 ',interval 29 day) AND '2019-07-27 '
GROUP BY day