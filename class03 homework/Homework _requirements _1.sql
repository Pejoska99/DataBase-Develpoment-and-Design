SELECT * FROM album;
SELECT * FROM artist;
SELECT * FROM artist_details;
SELECT * FROM genre;
SELECT * FROM playlist;
SELECT * FROM playlists_songs;
SELECT * FROM song;
SELECT * FROM song_lyrics;
SELECT * FROM songs_genres;

-- Homework requirements 1/2


-- 1.Calculate the count of all songs in the system

SELECT COUNT(*) AS total_songs
FROM song;

-- 2.Calculate the count of all songs per artist in the system
SELECT * FROM artist;
SELECT * FROM song;

SELECT a.id , COUNT(s.id) AS total_song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.id;


-- 3.Calculate the count of all songs per artist in the system for first 5 albums (ID <
--5)

SELECT a.id , COUNT(s.id) AS total_song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
WHERE s.album_id <= 5
GROUP BY a.id;

-- 4.Find the maximal duration and the average duration per song for each artist

SELECT a.name AS artist_name, MAX(s.duration) AS max_duration, AVG(s.duration) AS average_duration
FROM song s
RIGHT JOIN artist a ON s.artist_id = a.id
GROUP BY a.name;

--5.Calculate the count of all songs per artist in the system and filter only song
--count greater than 4

SELECT a.name AS artist_name,COUNT(s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
GROUP BY a.name
HAVING COUNT(s.id) >= 4;

--6.Calculate the count of all songs per artist in the system for first 5 albums (ID <
--5) and filter artists with more than 3 song count

SELECT a.name AS artist_name,COUNT(s.id) AS song_count
FROM artist a
JOIN song s ON a.id = s.artist_id
WHERE s.album_id <= 5
GROUP BY a.name
HAVING COUNT(s.id) > 3;
























