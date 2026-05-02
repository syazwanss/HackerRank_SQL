/* Using concat and substring to display occupation */

select concat(name, '(', substring(occupation, 1, 1), ')') as name
from occupations
order by name;

select concat('There are a total of', ' ', count(occupation), ' ', 
lower(occupation), 's.') as profession
from occupations

group by occupation
order by profession
;
