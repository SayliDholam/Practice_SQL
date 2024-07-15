
select name from teacher where dept is NULL;

--

SELECT teacher.name, dept.name
FROM teacher INNER JOIN dept
ON (teacher.dept=dept.id)

--

SELECT teacher.name,  dept.name
FROM teacher
LEFT JOIN dept ON teacher.dept = dept.id;

--

select teacher.name, dept.name from dept
left join teacher on dept.id = teacher.dept

--

SELECT name, COALESCE(mobile, '07986 444 2266') AS mobile_number
FROM teacher;


--

SELECT teacher.name , COALESCE(dept.name, 'None')
FROM teacher
LEFT JOIN dept ON teacher.dept = dept.id;


--

select count(name) , count(mobile) from teacher

--

SELECT dept.name , COUNT(teacher.id) 
FROM teacher
RIGHT JOIN dept ON  teacher.dept = dept.id 
GROUP BY dept.name;

--

SELECT name,
       CASE 
           WHEN dept IN (1, 2) THEN 'Sci'
           ELSE 'Art'
       END 
FROM teacher;

--

SELECT 
    name, 
    CASE 
        WHEN dept = 1 OR dept = 2 THEN 'Sci'
        WHEN dept = 3 THEN 'Art'
        ELSE 'None'
    END 
FROM 
    teacher;


--

