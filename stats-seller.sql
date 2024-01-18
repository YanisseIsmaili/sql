SELECT e.LastName, e.FirstName,

(SELECT count(*) FROM invoices) AS 'Total Sell',
 
(SELECT count(*) FROM invoices i
	INNER JOIN customers c ON c.CustomerId = i.CustomerId 
	WHERE c.SupportRepId = e.EmployeeId) AS 'Total Sell By Employee',
    
	ifnull((SELECT BillingCountry FROM invoices i
	INNER JOIN customers c ON c.CustomerId = i.CustomerId
	WHERE c.SupportRepId = e.EmployeeId
	GROUP BY BillingCountry ORDER BY count(*) DESC LIMIT 1),'-') AS 'Country With Most Sales',
	