-- How many artists published at least 10 MPEG tracks?

SELECT DISTINCT art.name, count(trks.TrackId) AS "# of Published MPEG Tracks"
FROM tracks trks
JOIN media_types meditype ON trks.MediaTypeId = meditype.MediaTypeId
JOIN albums alb ON trks.AlbumId = alb.AlbumId
JOIN artists art ON alb.ArtistId = art.ArtistId
WHERE meditype.name like '%MPEG%'
	AND art.name IS NOT NULL
GROUP BY art.name
HAVING count(*) > 10
ORDER BY art.name;