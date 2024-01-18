SELECT p.PlaylistId, p.Name,
  IFNULL(ROUND((COUNT(pt.TrackId)* 100*1.0 / (SELECT COUNT(*) FROM playlist_track WHERE PlaylistId = p.PlaylistId)),4),0) AS '% song selled twice'
FROM playlists p
