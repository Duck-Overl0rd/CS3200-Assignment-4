-- What are the total number of unique customers for each state, ordered alphabetically by state?

SELECT State, count(*) AS "Number of People in Each State"
FROM customers
WHERE State IS NOT NULL
GROUP BY State
ORDER BY State;
