select concat(name, '(', left(occupation, 1), ')')
from occupations
order by name asc;

select 'There are a total of', count(occupation), concat(lower(occupation), 's.')
from occupations
group by occupation
order by count(occupation);
