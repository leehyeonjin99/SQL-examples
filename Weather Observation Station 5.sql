select city, length(city) as "L"
from station
order by L, city
limit 1;

select city, length(city) as "L"
from station
order by L desc, city desc
limit 1;
