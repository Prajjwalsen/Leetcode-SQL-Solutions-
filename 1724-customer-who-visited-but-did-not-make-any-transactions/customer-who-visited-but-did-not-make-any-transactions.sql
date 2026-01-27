# Write your MySQL query statement below
SELECT v.customer_id, count(v.visit_id) as count_no_trans 
FROM Visits v
LEFT JOIN Transactions t
on t.visit_id = v.visit_id 
WHERE t.transaction_id  is NULL
GROUP BY v.customer_id