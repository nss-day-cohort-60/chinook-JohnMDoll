SELECT 
i.Total,
c.FirstName Customer_Name,
c.Country Customer_Country,
(e.FirstName || " " || e.LastName) as Sales_Agent_FullName
FROM Invoice i
JOIN Customer c ON c.CustomerId = i.CustomerId
JOIN Employee e ON e.EmployeeId = c.SupportRepId