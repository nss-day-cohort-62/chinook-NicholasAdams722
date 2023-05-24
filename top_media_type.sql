--Provide a query that shows the most purchased Media Type.

SELECT MediaType.Name, COUNT(Track.MediaTypeId)
FROM MediaType
JOIN Track ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN InvoiceLine ON InvoiceLine.TrackId = Track.TrackId
Order By MediaType.Name