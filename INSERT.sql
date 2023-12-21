INSERT INTO musician(name)
VALUES
('Michael Jackson'),
('Rauf & Faik'),
('Jony'),
('HammAli & Navai')
;

INSERT INTO genre(name)
VALUES 
('Диско, Фанк'),
('Pop'),
('Pop-Rap')
;

INSERT INTO album(name, year_of_release)
VALUES 
('Thriller','1983-11-04'), 
('Bad', '1987-02-03'), 
('Dangerous', '1991-11-24'), 
('Wonderful', '2020-10-16'), 
('Pain & Memories', '2019-09-11'), 
('Perfume', '2023-05-09'), 
('Список твоих мыслей', '2019-08-08'), 
('Аллея', '2019-03-20'), 
('Не ищите во мне жанры', '2022-12-25'), 
('Лето и точка', '2023-06-01'), 
('Janavi', '2018-03-15'), 
('Птичка', '2019-02-23'), 
('Когда хорошему человеку плохо', '2021-01-28')
;

INSERT INTO collection(name, year_of_release)
VALUES 
('Диско и Фанк', '1983-11-04'),
('Поп музыка', '2019-01-01'),
('Топ рэп музыка', '2018-01-01' ),
('Топ 4', '2019-01-20')
;

INSERT INTO song(name, duration, album_id, collection_id)
VALUES 
('Thriller', 277, 1, 1),
('Baby Be Mine', 263, 1, 1),
('Bad', 247, 2, 2),
('Dangerous', 418, 3, 1),
('Wonderful', 230, 4, 2),
('Lonely', 182, 5, 2),
('Perfume', 174, 6, 2),
('Love Your Voice', 150, 7, 4),
('Аллея', 153, 8, 2 ),
('Мой рай', 120, 9, 2),
('Иголки', 201, 9, 4),
('Воздушный сарафан', 183, 10, 4),
('Закрываю глаза', 340, 11, 3),
('До утра', 251, 11, 2),
('Птичка', 200, 12, 4 ),
('Друг или враг', 160, 13, 3)
;

INSERT INTO song(name, duration, album_id, collection_id)
VALUES
('Нет твоей вины', 150, 13, null)


INSERT INTO albumsmusicians(album_id, musician_id)
VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 4),
(12, 4),
(13, 4)
;

INSERT INTO musiciansgenres(musician_id, genre_id)
VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 3)
;

INSERT INTO musiciansgenres(musician_id, genre_id)
VALUES
(4,2)
;

INSERT INTO songscollections(song_id, collection_id)
VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 2),
(6, 2),
(7, 2),
(8, 4),
(9, 2),
(10, 2),
(11, 4),
(12, 4),
(13, 3),
(14, 2),
(15, 4),
(16, 3)
;