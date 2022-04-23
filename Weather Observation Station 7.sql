/*
정규표현식
^{문자} : 문자로 시작하는 문자열
{문자}$ : 문자로 끝나는 문자열
*/

SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE (CITY, "A$|E$|I$|O$|U$")
