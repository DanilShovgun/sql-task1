CREATE TABLE artist(
  id SERIAL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE if not exists genre(
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) not null  
);

CREATE table if not exists artist_genre (
  id SERIAL PRIMARY KEY,
  artist_id INT REFERENCES artist(id),
  genre_id INT REFERENCES genre(id)
);

CREATE table if not exists album(
  id SERIAL PRIMARY KEY,
  title VARCHAR
);

CREATE table if not exists album_artist(
  id SERIAL PRIMARY KEY,
  album_id INT REFERENCES album(id),
  artist_id INT REFERENCES artist(id)
);

CREATE table if not exists track(
  id SERIAL PRIMARY KEY,
  title VARCHAR(30) not null,
  album_id INT REFERENCES album(id),
  duration VARCHAR(30) not null
);

CREATE table if not exists mix(
  id SERIAL PRIMARY KEY,
  title VARCHAR(30) not null,
  year INT
);

CREATE table if not exists mix_track(
  id SERIAL PRIMARY KEY,
  mix_id INT REFERENCES mix(id),
  track_id INT REFERENCES track(id)
);