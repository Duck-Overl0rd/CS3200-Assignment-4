/* What are the names of the artists who made an album containing
the substring "symphony" in the album title?
*/

-- could also include al.Title if the title of the song is needed as well
SELECT ar.name
FROM albums al
JOIN artists ar ON al.ArtistId = ar.ArtistId
WHERE al.Title IS NOT NULL
    AND ar.name IS NOT NULL
    AND al.Title like '%symphony%';