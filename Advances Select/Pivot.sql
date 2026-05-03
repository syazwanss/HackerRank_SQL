/* Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output should consist of four columns (Doctor, Professor, Singer, and Actor) in that specific order, 
with their respective names listed alphabetically under each column. */

SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    SELECT 
        Name, 
        Occupation, 
        ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
) AS subquery
GROUP BY rn  /* row number group and order */
ORDER BY rn;
