SELECT Country, count(*) AS Total,
(SELECT count(*) FROM employees WHERE c.Country = Country) AS 'Employees',
(SELECT count)