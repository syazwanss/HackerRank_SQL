/*
Write a query to find the node type of Binary Tree ordered by the value of the node. Output one of the following for each node
*/

SELECT N,
CASE
    WHEN P IS NULL THEN 'Root'
    WHEN N IN (SELECT P FROM BST)
    Then 'Inner'
    Else 'Leaf'
    END
FROM BST
ORDER BY N;
    
