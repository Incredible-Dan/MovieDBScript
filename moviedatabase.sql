create database movies;
use movies;

create table actor(
actor_id INTEGER NOT NULL,
actor_fname CHAR(20) NOT NULL,
actor_lname CHAR(20) NOT NULL,
actor_gender CHAR(1) NOT NULL,
CONSTRAINT actor_pk PRIMARY KEY(actor_id));


create table director(
director_id INTEGER NOT NULL,
director_fname CHAR(20) NOT NULL,
director_lname CHAR(20) NOT NULL,
CONSTRAINT director_pk primary key(director_id));

create table movie(
movie_id INTEGER NOT NULL,
movie_title CHAR(50) NOT NULL,
movie_year INTEGER NOT NULL,
movie_time INTEGER NOT NULL,
movie_lang CHAR(50) NOT NULL,
movie_DateOf_release DATE,
movie_release_country CHAR(5),
CONSTRAINT movie_pk primary key(movie_id));

create table reviewer(
reviewer_id INTEGER NOT NULL,
reviewer_name CHAR(30),
CONSTRAINT reviewer_pk primary key(reviewer_id));

--  ALTER TABLE rating
--  ADD reviewer_stars INTEGER;

create table genres(
genre_id INTEGER ,
genre_title CHAR(20),
CONSTRAINT genres_pk primary key(genre_id));

create table movie_direction(
director_id INTEGER NOT NULL,
movie_id INTEGER NOT NULL,
CONSTRAINT movie_direction_fk1 foreign key(director_id) REFERENCES director(director_id),
CONSTRAINT movie_direction_fk2 FOREIGN KEY(movie_id) REFERENCES movie(movie_id));

create table movie_cast(
actor_id INTEGER NOT NULL,
movie_id INTEGER NOT NULL,
role CHAR(30) NOT NULL,
CONSTRAINT movie_cast_fk1 foreign key(actor_id) REFERENCES actor(actor_id),
CONSTRAINT movie_cast_fk2 FOREIGN KEY(movie_id) REFERENCES movie(movie_id));

create table movie_genres(
movie_id INTEGER NOT NULL,
genre_id INTEGER NOT NULL,
CONSTRAINT movie_genres_fk1 foreign key(movie_id) REFERENCES movie(movie_id),
CONSTRAINT movie_genres_fk2 FOREIGN KEY(genre_id) REFERENCES genres(genre_id));

create table rating(
movie_id INTEGER NULL,
reviewer_id INTEGER,
reviewer_stars INTEGER ,
num_of_ratings INTEGER,
CONSTRAINT rating_fk1 foreign key(movie_id) REFERENCES movie(movie_id),
CONSTRAINT reviewer_fk2 FOREIGN KEY(reviewer_id) REFERENCES reviewer(reviewer_id));
