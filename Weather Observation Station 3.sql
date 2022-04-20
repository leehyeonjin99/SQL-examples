## 중복 제거 시, distinct 사용

select distinct city
from station
where id % 2 = 0
