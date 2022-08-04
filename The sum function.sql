/* Query the total population of all cities in CITY where District is California. */

SELECT sum(population)
from city
WHERE district = "California"