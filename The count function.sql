/* Query a count of the number of cities in CITY having a Population larger than 100,000. */
 SELECT COUNT(population)
 from city
 WHERE population > 100000;