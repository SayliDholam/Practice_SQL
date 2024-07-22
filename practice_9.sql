SELECT movies.title, Boxoffice.domestic_sales, Boxoffice.international_sales
FROM Boxoffice
join movies on Boxoffice.movie_id = movies.id 
group by movies.title ;

--

SELECT M.Title, B.Domestic_sales, B.International_sales
FROM Movies M
JOIN Boxoffice B ON M.Id = B.Movie_id
WHERE B.International_sales > B.Domestic_sales;

--

SELECT movies.title, boxoffice.rating FROM movies
join boxoffice on movies.id = boxoffice.movie_id
order by boxoffice.rating desc;

--

SELECT DISTINCT E.Building
FROM Employees E
JOIN Buildings B ON E.Building = B.Building_name;

--

SELECT Building_name, Capacity
FROM Buildings;

--

SELECT b.Building_name, e.Role
FROM Buildings b
LEFT JOIN 
(
  SELECT DISTINCT Role, Building
  FROM Employees
) 
e ON b.Building_name = e.Building
ORDER BY b.Building_name, e.Role;

--

SELECT Name, Role
FROM Employees
WHERE Building IS NULL;

--

SELECT Buildings.Building_name
FROM Buildings
LEFT JOIN Employees ON Buildings.Building_name = Employees.Building
WHERE Employees.Building IS NULL;

--

SELECT movies.title ,((Boxoffice.Domestic_sales + Boxoffice.International_sales) / 1000000)
FROM movies 
join Boxoffice 
on Movies.id = Boxoffice.Movie_id

--

SELECT movies.title, Boxoffice.Rating*10
FROM movies
join Boxoffice
on movies.id = Boxoffice.movie_id;

--

SELECT movies.title FROM movies
where year%2 == 0;

--

SELECT Name, max(Years_employed) FROM employees;

--

SELECT Role, avg(years_employed) FROM employees
group by Role
order by Role;

--

SELECT Building, SUM(Years_employed) AS Total_Years_Worked
FROM Employees
GROUP BY Building;

--
