SELECT merchandiser_id, DATE_TRUNC('month', visit_date) AS month, COUNT(*) AS total_visits
FROM visits
WHERE visit_date >= CURRENT_DATE - INTERVAL '6 months'
GROUP BY merchandiser_id, month
ORDER BY month, merchandiser_id;


/* This query will show the number of visits per merchandiser over the last 6 months, allowing you to analyze trends. */