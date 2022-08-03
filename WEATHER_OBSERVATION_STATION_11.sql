/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:
STATION (( ID (NUMBER),CITY (VARCHAR), STATE (VARCHAR), LAT_N (NUMBER), LONG_W (NUMBER))
*/

SELECT DISTINCT(city)
from station
WHERE city NOT REGEXP '^[aeiou]' or city NOT REGEXP '[aeiou]$'