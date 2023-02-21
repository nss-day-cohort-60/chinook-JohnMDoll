SELECT 
DISTINCT(p.Name), 
COUNT(pt.TrackId) as Tracks
FROM Playlist p
JOIN PlayListTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.PlaylistId;