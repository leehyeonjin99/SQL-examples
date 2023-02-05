WITH A AS (
    SELECT 
        DISTINCT N,
        CASE 
            WHEN P IS NULL THEN 'Root'
            WHEN N IN (SELECT P FROM BST) THEN 'Inner'
            ELSE 'Leaf'
            END AS T
    FROM BST
    ORDER BY N
)

SELECT *
FROM A
