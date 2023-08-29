-- Create database music db
DROP DATABASE IF EXISTS music_db;
CREATE DATABASE music_db;
\c music_db;
 --create & view tables--

 --ARTIST--
 -- Create a spotify artist table
DROP TABLE IF EXISTS spotify_artists;
 
CREATE TABLE spotify_artists (
     artist_id VARCHAR(30) PRIMARY KEY,
     artist VARCHAR,
     followers int
     );

--TRACKS--
-- Create a spotify tracks table
DROP TABLE IF EXISTS spotify_tracks;

CREATE TABLE spotify_tracks (
	year INT,
	artist VARCHAR NOT NULL,
	danceability INT,
	duration_ms INT,
	energy INT,
	explicit INT,
  	id VARCHAR(30) PRIMARY KEY,
	loudness INT,
	name VARCHAR(255) not null,
	popularity INT,
	tempo INT,
	artist_id VARCHAR NOT NULL,
	FOREIGN KEY (artist_id) REFERENCES spotify_artists(artist_id)
);

--SALES--
-- Create a music sales table
DROP TABLE IF EXISTS music_sales;

CREATE TABLE music_sales (
  	format VARCHAR(35),
	metric VARCHAR (20),
	year INT,
	value_actual INT
	);
