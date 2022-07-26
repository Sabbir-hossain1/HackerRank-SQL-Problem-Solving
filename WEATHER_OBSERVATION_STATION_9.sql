/*
Query the list of CITY names from STATION that do not start with vowels.
 Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:
STATION (( ID (NUMBER),CITY (VARCHAR), STATE (VARCHAR), LAT_N (NUMBER), LONG_W (NUMBER))
*/
/* solution 1 */
select DISTINCT city 
from station
where LOWER(city) like '[!aeiou]%';

/* solution 2 */

select DISTINCT city
from station
where LOWER(city) NOT LIKE 'a%'
or NOT LIKE 'e%'
or NOT LIKE 'i%'
or NOT LIKE 'u%'
or NOT like 'o%'

/*solution 3 */

SELECT DISTINCT city
from station
WHERE LOWER(city) REGEXP '^[^aeiou]'

/*solution 4*/

SELECT DISTINCT city
from station
WHERE LOWER(left(city,1)) not in ('a','e','i','o','u')

