/*
	Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345 .
	Round your answer to 4 decimal places.
*/
/* solution 1 */
SELECT ROUND(LONG_W,4)
from station
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
limit 1;

/* solution 2 */

SELECT ROUND(LONG_W,4)
from station
where LAT_N = (SELECT MAX(LAT_N)) from station where LAT_N < 137.2345;