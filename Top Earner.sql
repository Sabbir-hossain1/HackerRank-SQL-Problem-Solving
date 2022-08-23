select (salary*months) as earning,count(salary*months) as no_of_emp 
from Employee
group by earning
order by earning DESC
limit 1;