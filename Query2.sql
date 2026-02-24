-- What are the names of each album and the artist who created it?

SELECT al.Title, ar.name
FROM albums al
JOIN artists ar ON al.ArtistId = ar.ArtistId
WHERE al.Title IS NOT NULL AND ar.name IS NOT NULL;
