

SELECT DISTINCT(CITY) 
FROM STATION 
WHERE lower(SUBSTR(CITY,1,1)) IN ('a','e','i','o','u');
