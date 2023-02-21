SELECT 
(e.FirstName || " " || e.LastName) as Employee_FullName,
COUNT(c.CustomerId) as CustomerCount
FROM Employee e
LEFT JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY EmployeeId;