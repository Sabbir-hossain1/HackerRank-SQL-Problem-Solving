/* solution 1 */
SELECT name
from students
WHERE marks > 75
ORDER BY RIGHT(name,3),ID ASC;

/* solution 2 */

SELECT name
from students
WHERE marks > 75 
ORDER BY SUBSTR(name,-3,3) , ID ASC;