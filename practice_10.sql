SELECT Role, count(Name) FROM employees 
group by Role having Role = "Artist" ;

--

SELECT Role, count(name) FROM employees 
group by Role;

--

SELECT Role, sum(Years_employed) FROM employees 
group by Role having Role = "Engineer";

--

SELECT Director, count(title) FROM movies
group by Director;

--

SELECT movies.Director, sum(BoxOffice.Domestic_sales), sum(BoxOffice.International_sales) 
FROM movies
join BoxOffice
on Movies.Id = BoxOffice.Movie_id
group by movies.Director;

--

SELECT director, SUM(domestic_sales + international_sales) as Cumulative_sales_from_all_movies
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
GROUP BY director;

--

INSERT INTO Movies (Id, Title, Director, Year, Length_minutes)
VALUES (15, 'Toy Story 4', 'ABD', 2023, 100);

--

insert into Boxoffice (Movie_id, Rating, Domestic_sales, International_sales) 
values (15, 8.7, 340000000, 270000000);

--

update movies set director = "John Lasseter" where title = "A Bug's Life";

--

update movies set year = 1999 where title = "Toy Story 2";

--

update movies set title = "Toy Story 3", director = "Lee Unkrich"
where title = "Toy Story 8" and director = "El Directore";

--

delete from movies where year < 2005;

--

delete from movies where director = "Andrew Stanton";

--



