/* Solution 1 */
SELECT ROUND(LONG_W ,4)
from STAION
WHERE LAT_N = (SELECT min(lat_n) 
				from station
				lat_n>38.7780)

/* Solution 2 */

SELECT ROUND(Long_w,4) 
from station 
WHERE lat_n > 38.7780
ORDER By lat_n asc
limit 1
;