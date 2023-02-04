WITH CTE AS
(
SELECT
    ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME) AS RN,
    CASE WHEN OCCUPATION = 'Doctor' 
        THEN NAME
    END 
    AS Doctor,
    CASE WHEN OCCUPATION = 'Professor' 
        THEN NAME
    END 
    AS Professor,
    CASE WHEN OCCUPATION = 'Singer' 
        THEN NAME
    END
    AS Singer,
    CASE WHEN OCCUPATION = 'Actor' 
        THEN NAME
    END
    AS Actor
FROM OCCUPATIONS
)

select MAX(Doctor), MAX(Professor), MAX(Singer), MAX(Actor)
from CTE
GROUP BY RN
ORDER BY RN;
