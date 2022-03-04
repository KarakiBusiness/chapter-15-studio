SELECT title, year_released FROM MOVIES order by year_released desc; 
select * FROM directors order by country, last_name asc;
SELECT last_name, director_id from directors where first_name='Rob' and last_name='Reiner';
INSERT INTO movies (title, year_released, director_id)
VALUES ("The Princess Bride", 1987, 21);

SELECT movies.title, movies.year_released,directors.last_name
from movies
inner join directors
where movies.director_id=directors.director_id;

SELECT movies.title, directors.first_name,directors.last_name
from movies
inner join directors
where movies.director_id=directors.director_id
order by directors.last_name asc;

select directors.first_name, directors.last_name
from movies, directors
where movies.director_id = directors.director_id
and movies.title='The Incredibles';

delete from movies where movie_id = 17;
delete from directors where director_id=1;