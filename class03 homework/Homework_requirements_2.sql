-- Homework requirements 2/2

SELECT * FROM album;
SELECT * FROM artist;
SELECT * FROM artist_details;
SELECT * FROM genre;
SELECT * FROM playlist;
SELECT * FROM playlists_songs;
SELECT * FROM song;
SELECT * FROM song_lyrics;
SELECT * FROM songs_genres;

-- 1.Find the song count, maximal duration, and the average duration per artist on
--all songs in the system. Filter only records where maximal duration is more
--than the average duration
	SELECT a.id AS artist_id, a.name AS artist_name, COUNT (s.id) AS song_count, MAX(s.duration) AS max_duration, AVG (s.duration)
 AS avg_duration
 FROM artist a
 JOIN song s ON a.id = s.artist_id
 GROUP BY a.id, a.name
 HAVING MAX(s.duration) > AVG (s.duration)
 

-- 2.Create a new view (vw_ArtistSongCounts) that will list all artist IDs and count
--of songs per artist

CREATE VIEW vw_ArtistSongCounts AS
SELECT a.id AS artist_id, COUNT (s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.id

SELECT * FROM vw_ArtistSongCounts;


-- 3.Change the view to show artist names instead of artist ID

DROP VIEW IF EXISTS vw_ArtistSongCounts;

CREATE VIEW vw_ArtistSongCounts AS
SELECT a.name AS artist_name, COUNT (s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.name; 


SELECT * FROM vw_ArtistSongCounts;

-- 4. List all rows from the view ordered by the biggest song count
SELECT * FROM vw_ArtistSongCounts
ORDER BY song_count DESC


-- 5. Create a new view (vw_ArtistAlbumDetails) that will list all artists (name) and
--count the albums they have
CREATE VIEW vw_ArtistAlbumDetail AS
SELECT a.name AS artist_name, COUNT(DISTINCT s.album_id) AS album_count
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.name;


SELECT * FROM vw_ArtistAlbumDetail;


