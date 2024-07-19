select count(id) from stops

--

select id from stops 
where name = "Craiglockhart"

--

SELECT stops.id, stops.name
FROM route
JOIN stops ON route.stop = stops.id
WHERE route.num = '4' AND route.company = 'LRT';

--

SELECT route.company, route.num, COUNT(route.stop)
FROM route
WHERE route.stop IN (149, 53)
GROUP BY route.company, route.num
HAVING COUNT(route.stop) = 2;

--

SELECT 
    a.company, 
    a.num, 
    a.stop AS start_stop, 
    b.stop AS end_stop
FROM 
    route a
JOIN 
    route b ON a.num = b.num AND a.company = b.company
WHERE 
    a.stop = (SELECT id FROM stops WHERE name = 'Craiglockhart')
    AND b.stop = (SELECT id FROM stops WHERE name = 'London Road');

--

SELECT 
    a.company, 
    a.num, 
    stop1.name AS start_stop, 
    stop2.name AS end_stop
FROM 
    route a
JOIN 
    route b ON a.num = b.num AND a.company = b.company
JOIN 
    stops stop1 ON a.stop = stop1.id
JOIN 
    stops stop2 ON b.stop = stop2.id
WHERE 
    stop1.name = 'Craiglockhart'
    AND stop2.name = 'London Road';

--

SELECT DISTINCT
    a.company, 
    a.num
FROM 
    route a
JOIN 
    route b ON a.num = b.num AND a.company = b.company
WHERE 
    (a.stop = 115 AND b.stop = 137)
    OR
    (a.stop = 137 AND b.stop = 115);

--

SELECT DISTINCT
    a.company, 
    a.num
FROM 
    route a
JOIN 
    route b ON a.num = b.num AND a.company = b.company
JOIN 
    stops sa ON a.stop = sa.id
JOIN 
    stops sb ON b.stop = sb.id
WHERE 
    (sa.name = 'Craiglockhart' AND sb.name = 'Tollcross')
    OR
    (sa.name = 'Tollcross' AND sb.name = 'Craiglockhart');

--

