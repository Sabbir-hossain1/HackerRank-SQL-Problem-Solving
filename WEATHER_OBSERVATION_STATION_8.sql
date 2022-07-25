/*
Query the list of CITY names from STATION 
which have vowels (i.e., a, e, i, o, and u) as both their first and last characters.
Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

STATION ( ID (NUMBER),CITY (VARCHAR), STATE (VARCHAR), LAT_N (NUMBER), LONG_W (NUMBER)
*/


/* solution 1 */
select DISTINCT city
from station
WHERE city LIKE '[aeiou]%' and city LIKE '%[aeiou]';

/* solution 2 */

select DISTINCT city 
from station 
WHERE left(city,1) in ('a','e','i','o','u') and city right(city,1) in ('a','e','i','o','u') ;

/* solution 3 */

select DISTINCT city 
from station 
WHERE city REGEXP '^[aeiou].*[aeiou]$'