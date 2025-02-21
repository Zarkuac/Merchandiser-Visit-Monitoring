SELECT store_id, COUNT(*) AS visit_count
FROM visits
GROUP BY store_id
ORDER BY visit_count DESC
LIMIT 5;


--This query will identify the top 5 stores with the highest number of visits, which can help in understanding which locations are most frequently visited.