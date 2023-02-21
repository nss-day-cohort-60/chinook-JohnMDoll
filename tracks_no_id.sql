SELECT 
t.Name,
Al.Title as AlbumTitle,
mt.Name as MediaType,
g.Name as Genre,
t.Composer,
t.Milliseconds,
t.Bytes,
t.UnitPrice
FROM Track t
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN Album Al ON Al.AlbumId = t.AlbumId
JOIN Genre g ON g.GenreId = t.GenreId;