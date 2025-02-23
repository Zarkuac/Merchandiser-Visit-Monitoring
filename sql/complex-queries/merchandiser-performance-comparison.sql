SELECT m.id, m.name, COUNT(v.id) / 30.0 AS avg_visits_per_day
FROM merchandisers m
LEFT JOIN visits v ON m.id = v.merchandiser_id AND v.visit_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY m.id
ORDER BY avg_visits_per_day DESC;


/* This query compares the average number of visits per day for each merchandiser over the last 30 days, providing a performance comparison. */