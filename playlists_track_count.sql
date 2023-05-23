-- Provide a query that shows the total number of tracks in each playlist. The resultant table should include:
-- Playlist name
-- Total number of tracks on each playlist

SELECT Playlist.Name AS Name, COUNT(PlaylistTrack.TrackId)
FROM Playlist 
JOIN PlaylistTrack ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY Name 