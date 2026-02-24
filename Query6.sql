/* What are the names of all artists who performed MPEG (video or audio)
tracks in either the "Brazilian Music" or the "Grunge" playlists?
*/

SELECT DISTINCT art.name
FROM playlists playlist
JOIN playlist_track playtrack ON playlist.PlaylistId = playtrack.PlaylistId
JOIN tracks trks ON playtrack.TrackId = trks.TrackId
JOIN media_types meditype ON trks.MediaTypeId = meditype.MediaTypeId
JOIN albums alb ON trks.AlbumId = alb.AlbumId
JOIN artists art ON alb.ArtistId = art.ArtistId
WHERE meditype.name like '%MPEG%'
	AND (playlist.name like '%Brazilian Music%'
		OR playlist.name like '%Grunge%')
	AND art.name IS NOT NULL;
