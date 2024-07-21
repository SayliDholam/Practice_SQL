
select * from movies;
select title, year, director from movies

--

SELECT title, id FROM movies where id = 6;
SELECT title FROM movies where year between 2000 and 2010;
select title from movies where year not between 2000 and 2010;

--

SELECT Id, Title, Year
FROM Movies
WHERE Director 
IN ('John Lasseter', 'Pete Docter', 'Andrew Stanton', 'Brad Bird', 'Lee Unkrich', 'Dan Scanlon', 'Brian Fee', 'Josh Cooley', 'Enrico Casarosa')
ORDER BY Year
LIMIT 5;

--

SELECT title FROM movies where title like "Toy Story%" ;
SELECT title FROM movies where director = "John Lasseter";
SELECT title, director FROM movies where director <> "John Lasseter";
SELECT title FROM movies where title like "WALL%";

--

SELECT DISTINCT Director FROM Movies ORDER BY Director;
SELECT title, year FROM movies order by year desc limit 4;
SELECT title FROM movies order by title asc limit 5;
SELECT title FROM movies order by title asc limit 5 offset 5;

--

SELECT city, population FROM north_american_cities where country = "Canada";
SELECT * FROM north_american_cities where country = "United States" order by latitude desc ;
SELECT City FROM North_american_cities WHERE Longitude < -87.6298 ORDER BY Longitude ASC;
SELECT city FROM north_american_cities where country = "Mexico" order by population desc limit 2 ;
SELECT city, population FROM north_american_cities where country = "United States" order by population desc limit 2 offset 2;

--

