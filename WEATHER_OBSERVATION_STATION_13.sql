SELECT TRUNCATE(SUM(LAT_N),4)
from station
where LAT_N > 38.7880 and LAT_N < 137.2345;