-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.

SELECT  
    Track.Name AS Track_name, 
    Artist.Name AS Artist_name,
FROM Artist 
JOIN Album ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Track.AlbumId = Album.AlbumId;