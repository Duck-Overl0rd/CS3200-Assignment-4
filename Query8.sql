/* What is the total length of each playlist in hours?
List the playlist id and name of only those playlists that are longer
than 2 hours, along with the length in hours rounded to two decimals.
*/

SELECT playlist.PlaylistId, playlist.name,
ROUND(SUM(track.Milliseconds) / 3600000.0, 2) AS "Length in Hours"FROM tracks track
JOIN playlist_track playtrack ON track.TrackId = playtrack.TrackId
JOIN playlists playlist ON playtrack.PlaylistId = playlist.PlaylistId
WHERE playlist.name IS NOT NULL
GROUP BY playlist.PlaylistId, playlist.name
HAVING ROUND(SUM(track.Milliseconds) / 3600000.0, 2) > 2
ORDER BY playlist.name;
