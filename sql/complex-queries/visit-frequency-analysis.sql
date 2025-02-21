
SELECT merchandiser_id, COUNT(DISTINCT store_id) AS unique_stores_visited, COUNT(*) AS total_visits
FROM visits
GROUP BY merchandiser_id
ORDER BY unique_stores_visited DESC;

/*  This query provides a distribution of visits per merchandiser, showing 
how many merchandisers fall into different visit count ranges.*/