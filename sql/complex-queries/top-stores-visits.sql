SELECT store_id, COUNT(*) AS visit_count
FROM visits
GROUP BY store_id
ORDER BY visit_count DESC
LIMIT 5;