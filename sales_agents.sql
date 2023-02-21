SELECT e.*
FROM Employee e
-- JOIN Customer c 
-- GROUP BY e.EmployeeId
-- WHERE c.SupportRepId = e.EmployeeId
WHERE e.Title LIKE 'sales%agent'
