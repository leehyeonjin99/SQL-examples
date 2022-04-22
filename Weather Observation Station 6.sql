/*
여러개의 표현식에 대해서 LIKE를 하고 싶을 떄는, REGEXP_LIKE 사용하기
*/

SELECT CITY
FROM STATION
WHERE REGEXP_LIKE (CITY, "^A|^E|^I|^O|^U")
