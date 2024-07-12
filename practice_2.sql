SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')

--

select name from world 
where continent = 'Europe' and 
gdp/population > (
select gdp/population from world where name = 'United Kingdom'
)

--

select name, continent from world where continent in 
(select continent from world where name in ('Argentina','Australia'))
order by name;

--

SELECT name, population
FROM world
WHERE population > (
    SELECT population 
    FROM world 
    WHERE name = 'United Kingdom'
) 
AND population < (
    SELECT population 
    FROM world 
    WHERE name = 'Germany'
);

--

select name, concat(round((population / (
select population from world where name = 'Germany'))*100,0),'%') as percentage 
from world 
where continent = 'Europe';

--

SELECT name 
FROM world 
WHERE gdp > 
    (SELECT MAX(gdp) 
     FROM world 
     WHERE continent = 'Europe' AND gdp IS NOT NULL) 
AND gdp IS NOT NULL;

--

SELECT 
    continent, 
    name, 
    area 
FROM 
    world AS w1
WHERE 
    area = (
        SELECT MAX(area) 
        FROM world AS w2 
        WHERE w1.continent = w2.continent
    );


--

SELECT 
    continent, 
    name 
FROM 
    world AS w1
WHERE 
    name = (
        SELECT MIN(name) 
        FROM world AS w2 
        WHERE w1.continent = w2.continent
    );;


--

SELECT 
    name, 
    continent, 
    population
FROM 
    world
WHERE 
    continent IN (
        SELECT 
            continent 
        FROM 
            world 
        GROUP BY 
            continent 
        HAVING 
            MAX(population) <= 25000000
    );


--

SELECT 
    w1.name, 
    w1.continent
FROM 
    world w1
WHERE 
    w1.population > 3 * (
        SELECT 
            MAX(w2.population) 
        FROM 
            world w2 
        WHERE 
            w1.continent = w2.continent 
            AND w1.name != w2.name
    );


--






