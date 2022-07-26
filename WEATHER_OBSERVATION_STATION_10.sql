/*
Query the list of CITY names from STATION that do not ends with vowels.
 Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:
STATION (( ID (NUMBER),CITY (VARCHAR), STATE (VARCHAR), LAT_N (NUMBER), LONG_W (NUMBER))
*/

/* solution 1 */

SELECT DISTINCT city 
from station
where city NOT REGEXP '[aeiou]$'; /* where city  REGEXP '[^aeiou]$'*/


/* solut6ion 2 */

select DISTINCT city 
from station
where lower(city) like '%[^aeiou]';


/* solution 3 */

select DISTINCT city 
from station
where right(city,1) not in ('a','e','i','o','u')
