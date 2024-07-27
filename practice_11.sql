create table Database (Name VARCHAR , Version FLOAT , Download_count INTEGER);

--

alter table movies add column Aspect_ratio float;

--

alter table movies add column Language text default English

--

drop table movies 

--

drop table if exists movies 

--------------------------------------------------

-- subquery format:

Select query with subquery constraint
SELECT *, …
FROM mytable
WHERE column
    IN/NOT IN (SELECT another_column
               FROM another_table);


-----------------------------------------------------

-- set operators syntax

SELECT column, another_column
   FROM mytable
UNION / UNION ALL / INTERSECT / EXCEPT
SELECT other_column, yet_another_column
   FROM another_table
ORDER BY column DESC
LIMIT n;


------------------------------------------------------

