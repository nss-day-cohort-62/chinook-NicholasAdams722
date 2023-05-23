-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include:
-- Album name
-- Media type
-- Genre

SELECT Track.Name, Album.Title, MediaType.Name, Genre.Name
FROM Track 
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Genre ON Genre.GenreId = Track.GenreId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId