

SELECT
    DATE_FORMAT(week, '%x-%v') AS week,
    SUM(quantity) AS total_quantity
FROM
    orders_analysis
WHERE
    week >= '2023-01-01' AND week < '2023-04-01'
GROUP BY
    DATE_FORMAT(week, '%x-%v')
ORDER BY
    week;

----------------------

select user_id, round(sum(listen_duration)/60) as total_listen_duration, 
count(distinct song_id) as unique_song_count 
from listening_habits
group by user_id 
order by user_id ;

----------------------------------------------------------------------

SELECT population FROM world
  WHERE name = 'Germany'

  --

SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

--

SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000;

--

SELECT name, continent, population FROM world

--

SELECT name FROM world
WHERE population >= 200000000

--

select name, gdp/population 
from world 
where population >= 200000000;

--

select name, population/1000000  
from world 
where continent = 'South America';

--

select name , population from world 
where name in ('France', 'Germany', 'Italy');

--

select name from world 
where name like '%United%';

--

select name, population, area 
from world 
where area > 3000000 or population > 250000000;

--

select name , population, area 
from world where area > 3000000 xor population > 250000000

--

select name , round(population/1000000,2), 
round(gdp/1000000000,2)
from world
where continent = 'South America';

--

select name, round(gdp/population,-3)
from world where gdp> 1000000000000;

--

SELECT name, capital
  FROM world
 WHERE  LENGTH(name) = LENGTH(capital);

 --

 SELECT
    name,
    capital
FROM
    world
WHERE
    LEFT(name, 1) = LEFT(capital, 1)
    AND name != capital;

--

SELECT name
FROM world
WHERE name LIKE '%a%'
  AND name LIKE '%e%'
  AND name LIKE '%i%'
  AND name LIKE '%o%'
  AND name LIKE '%u%'
  AND name NOT LIKE '% %';

--

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

--

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'literature'

--

select yr, subject from nobel 
where winner = 'Albert Einstein'

--

SELECT winner
FROM nobel
WHERE subject = 'Peace'
  AND yr >= 2000;

--

select * from nobel 
where subject= 'literature' and yr between 1980 and 1989

--

SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Thomas Woodrow Wilson',
                  'Jimmy Carter', 'Barack Obama')


--

select winner from nobel 
where winner like 'John%'

--

select yr, subject, winner 
from nobel 
where (subject = 'physics' and yr = 1980) or (subject = 'chemistry' and yr = 1984)

--

select yr, subject, winner from nobel where yr = 1980 and subject not in
('chemistry','medicine')

--

select yr, subject, winner from nobel 
where (subject = 'Medicine' and yr< 1910)
or (subject= 'Literature' and yr>= 2004)

--

select yr, subject, winner 
from nobel 
where winner = 'PETER GRÜNBERG'

--

SELECT *
FROM nobel
WHERE winner = 'EUGENE O''NEILL';

--

select winner, yr, subject 
from nobel 
where winner like 'Sir%' 
order by yr 
desc,winner

--

select winner, subject 
from nobel
where yr = 1984
order by 
case 
when subject IN ('chemistry','physics') then 1
else 0
end,
subject asc, winner asc;

--



