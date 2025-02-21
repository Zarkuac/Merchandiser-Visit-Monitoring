
SELECT s.id, s.name, s.location, m.id AS merchandiser_id, m.name AS merchandiser_name
FROM stores s
JOIN routes r ON s.id = r.store_id
LEFT JOIN visits v ON s.id = v.store_id AND v.visit_date >= CURRENT_DATE - INTERVAL '90 days'
JOIN merchandisers m ON r.merchandiser_id = m.id
WHERE v.id IS NULL;