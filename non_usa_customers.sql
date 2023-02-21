SELECT (c.FirstName || " " || c.LastName) as FullName,
CustomerId,
Country
FROM customer c
WHERE Country NOT LIKE 'USA'