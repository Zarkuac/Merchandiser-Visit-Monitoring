SELECT DATE_TRUNC('month', visit_date) AS month, COUNT(*) AS total_visits
FROM visits
WHERE visit_date >= CURRENT_DATE - INTERVAL '1 year'
GROUP BY month
ORDER BY month;

/* This query summarizes the total visits per month for the last year,
 which can help in identifying seasonal trends. */