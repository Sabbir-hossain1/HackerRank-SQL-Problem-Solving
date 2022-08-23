/*
	Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 .
	Round your answer to 4 decimal places.
*/
/* solution 1 */

SELECT ROUND(MIN(LAT_N),4) 
from station
WHERE LAT_N > 38.7780;