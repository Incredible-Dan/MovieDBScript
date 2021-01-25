-- select movie_year , movie_title
--  from movie
--  select *
--  from movie;
--  alter table movie
--  modify column movie_dateOf_release Date NOT NULL;
--  select movie_yearmovie_title
--  where movie_title = 'American beauty';
 
--  SELECT movie_title
-- FROM movie
-- WHERE movie_year<1998;

-- select movie_title
-- from movie
-- where movie_title like'American Beauty'

-- select movie_title, movie_DateOf_release
-- from movie
-- where movie_year = 1999;

-- SELECT movie_title
-- FROM movie
-- WHERE movie_year<1998;

-- SELECT reviewer.reviewer_name
-- FROM reviewer
-- UNION
-- (SELECT movie.movie_title
-- FROM movie);

-- SELECT reviewer.reviewer_name
-- FROM reviewer, rating
-- WHERE rating.reviewer_id = reviewer.reviewer_id
-- AND rating.reviewer_stars>=7 
-- AND reviewer.reviewer_name IS NOT NULL;

-- SELECT movie_title
-- FROM movie
-- WHERE movie_id NOT IN (
-- SELECT movie_id 
-- FROM rating
-- );

-- SELECT reviewer_name
-- FROM reviewer
-- INNER JOIN rating USING(reviewer_id)
-- WHERE reviewer_stars IS NULL;

SELECT director_fname, director_lname, movie_title
FROM  director 
NATURAL JOIN movie_direction
NATURAL JOIN movie
NATURAL JOIN movie_cast
WHERE role IS  NOT NULL
AND movie_title='Eyes Wide Shut';