# Write your MySQL query statement below
SELECT Department, Employee, Salary 
FROM (SELECT d.name as department, e.name as employee, e.salary as salary,
DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) as ranks
FROM Employee e
LEFT JOIN Department d
ON e.departmentId = d.id) temp
WHERE ranks <= 3
