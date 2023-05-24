-- Which country's customers spent the most?


SELECT BillingCountry AS Country, SUM(Total) AS TotalSales
FROM Invoice
GROUP BY Country
ORDER BY Total DESC
LIMIT 1

