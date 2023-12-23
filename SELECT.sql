-- example 2 --

SELECT name, duration FROM song 
WHERE duration =(SELECT MAX(duration) FROM song);

SELECT name FROM song
WHERE duration >= 210;

SELECT name FROM collection
WHERE year_of_release BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name FROM musician
WHERE name NOT LIKE '% %';

-- доработка--
SELECT name FROM song
WHERE name ILIKE 'мой %'
OR name ILIKE '% мой'
OR name ILIKE '% мой %'
OR name ILIKE 'мой'
OR name ILIKE '% my'
OR name ILIKE 'my %'
OR name ILIKE '% my %'
OR name ILIKE 'my'
GROUP BY name;

-- example 3 --

SELECT g."name", COUNT(m2."name")
FROM genre g
JOIN musiciansgenres m ON g.genre_id = m.genre_id 
JOIN musician m2 ON m.musician_id = m2.musician_id 
GROUP BY g."name";

--доработка--
SELECT COUNT(song_id)
FROM album a 
JOIN song s ON s.album_id = a.album_id 
WHERE year_of_release BETWEEN '2019-01-01' AND '2020-12-31'
;

SELECT a."name", AVG(s."duration")
FROM album a 
JOIN song s ON s.album_id = a.album_id 
GROUP BY a."name";

-- сделала то, что пропустила
SELECT DISTINCT name FROM musician
WHERE name NOT in(SELECT m."name" FROM musician m 
                  JOIN albumsmusicians a ON m.musician_id = a.musician_id
                  JOIN album a2 ON a2.album_id = a.album_id
                  WHERE year_of_release BETWEEN '2020-01-01' AND '2020-12-31'
                  );

SELECT DISTINCT c."name" FROM collection c 
JOIN songscollections s ON s.collection_id = c.collection_id 
JOIN song s2 ON s2.song_id = s.song_id 
JOIN album a ON a.album_id = s2.album_id 
JOIN albumsmusicians a2 ON a2.album_id = a.album_id 
JOIN musician m ON m.musician_id = a2.musician_id 
WHERE m."name" = 'HammAli & Navai';

-- example 4 --
-- доработка--
SELECT DISTINCT a."name" FROM album a 
JOIN albumsmusicians a2 ON a2.album_id = a.album_id 
JOIN musician m ON m.musician_id = a2.musician_id 
JOIN musiciansgenres m2 ON m2.musician_id = m.musician_id 
GROUP BY a."name", m2."musician_id"
HAVING COUNT(m2.genre_id)> 1;

SELECT s."name" FROM song s 
LEFT JOIN songscollections s2 ON s.collection_id = s2.collection_id 
WHERE s2.collection_id IS NULL;

SELECT DISTINCT m."name" FROM musician m 
JOIN albumsmusicians a ON a.musician_id = m.musician_id 
JOIN album a2 ON a2.album_id = a.album_id 
JOIN song s ON s.album_id = a2.album_id 
WHERE duration =(SELECT MIN(duration) FROM song);

SELECT a."name" FROM album a 
JOIN song s ON s.album_id = a.album_id 
GROUP BY a."name" 
HAVING COUNT(a."name")= (SELECT COUNT(a."name")
                         FROM song s JOIN album a ON s.album_id = a.album_id 
                         GROUP BY a."name" 
                         ORDER BY a."name"
                         LIMIT 1);