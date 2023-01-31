select distinct city
from station
where not regexp_like(city, '^[a,e,i,o,u]') and not regexp_like(city, '[a,e,i,o,u]$')
