CREATE TABLE IF NOT EXISTS musician(
musician_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS genre(
genre_id SERIAL PRIMARY KEY, 
name VARCHAR (40) NOT NULL UNIQUE 
);

CREATE TABLE IF NOT EXISTS album(
album_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL, 
year_of_release date NOT NULL CHECK (year_of_release>'1980-01-01') 
);

CREATE TABLE IF NOT EXISTS collection(
collection_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
year_of_release date NOT NULL CHECK (year_of_release>'1980-01-01')
);

CREATE TABLE IF NOT EXISTS song(
song_id SERIAL PRIMARY KEY,
name VARCHAR(40) NOT NULL,
duration INTEGER NOT NULL CHECK (duration >60),
album_id INTEGER NOT NULL REFERENCES album(album_id),
collection_id INTEGER REFERENCES collection(collection_id)
);

CREATE TABLE IF NOT EXISTS albumsmusicians(
albumsmusicians_id SERIAL PRIMARY KEY,
album_id INTEGER NOT NULL REFERENCES album(album_id),
musician_id INTEGER NOT NULL REFERENCES musician(musician_id)
);

CREATE TABLE IF NOT EXISTS musiciansgenres(
musiciansgenres_id SERIAl PRIMARY KEY,
musician_id INTEGER NOT NULL REFERENCES musician(musician_id),
genre_id INTEGER NOT NULL REFERENCES genre(genre_id)
);

CREATE TABLE IF NOT EXISTS songscollections(
songscollections_id SERIAL PRIMARY KEY, 
song_id INTEGER NOT NULL REFERENCES song(song_id),
collection_id INTEGER REFERENCES collection(collection_id)
); 