-- Which states have more than 10 unique customers?

SELECT State, count(*) AS "Number of People in Each State"
FROM customers
WHERE State IS NOT NULL
GROUP BY State
HAVING count(*) > 10
ORDER BY State;
-- returns a blank table because no state had more than 10 unique customers