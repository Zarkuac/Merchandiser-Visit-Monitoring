-- sql queries for reporting

/* Total visits per merchandiser (last 30 days) */
SELECT merchandiser_id, COUNT(*) AS total_visits
FROM visits
WHERE visit_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY merchandiser_id
ORDER BY total_visits DESC;

/* Unvisited stores in the last 60 days */
SELECT s.id, s.name, s.location
FROM stores s
LEFT JOIN visits v ON s.id = v.store_id
WHERE v.visit_date IS NULL OR v.visit_date < CURRENT_DATE - INTERVAL '60 days';

/* Merchandiser efficiency (visits per day) */
SELECT merchandiser_id, COUNT(*) / 30.0 AS avg_visits_per_day
FROM visits
WHERE visit_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY merchandiser_id
ORDER BY avg_visits_per_day DESC;