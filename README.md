# Merchandiser Visit Monitoring

## Overview
This project tracks merchandiser visits to stores, helping businesses analyze visit frequency, efficiency, and unvisited stores. The data is stored in PostgreSQL and can be used for reporting and visualization.

## Features
- **Monitor Visits:** Track when and where merchandisers visit stores.
- **Analyze Performance:** Measure visits per merchandiser and efficiency.
- **Identify Unvisited Stores:** Generate reports on stores not visited in a given timeframe.

## Database Schema
The database consists of four key tables:

### 1. Merchandisers
Stores details about merchandisers.
```sql
CREATE TABLE merchandisers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    hire_date DATE
);
```

### 2. Stores
Stores details about locations that merchandisers visit.
```sql
CREATE TABLE stores (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    location VARCHAR(255),
    last_visit_date DATE
);
```

### 3. Routes
Defines planned visits for merchandisers.
```sql
CREATE TABLE routes (
    id SERIAL PRIMARY KEY,
    merchandiser_id INT REFERENCES merchandisers(id),
    store_id INT REFERENCES stores(id),
    scheduled_date DATE NOT NULL
);
```

### 4. Visits
Records actual store visits.
```sql
CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    merchandiser_id INT REFERENCES merchandisers(id),
    store_id INT REFERENCES stores(id),
    visit_date TIMESTAMP DEFAULT NOW()
);
```

## Reporting Queries
### 1. Total visits per merchandiser (last 30 days)
```sql
SELECT merchandiser_id, COUNT(*) AS total_visits
FROM visits
WHERE visit_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY merchandiser_id
ORDER BY total_visits DESC;
```

### 2. Unvisited stores in the last 60 days
```sql
SELECT s.id, s.name, s.location
FROM stores s
LEFT JOIN visits v ON s.id = v.store_id
WHERE v.visit_date IS NULL OR v.visit_date < CURRENT_DATE - INTERVAL '60 days';
```

### 3. Merchandiser efficiency (visits per day)
```sql
SELECT merchandiser_id, COUNT(*) / 30.0 AS avg_visits_per_day
FROM visits
WHERE visit_date >= CURRENT_DATE - INTERVAL '30 days'
GROUP BY merchandiser_id
ORDER BY avg_visits_per_day DESC;
```

## Getting Started
### 1. Clone the repository
```sh
git clone https://github.com/yourusername/merchandiser-visit-monitoring.git
cd merchandiser-visit-monitoring
```

### 2. Set up the database
- Install PostgreSQL.
- Run `sql/schema.sql` to create tables.
- Load sample data from `sql/sample_data.sql`.

### 3. Run queries
Use `sql/reports.sql` to generate reports.

## Future Enhancements
- Implement an API for real-time visit tracking.
- Add a frontend dashboard for visualization.
- Automate reports with PostgreSQL functions.

## License
MIT License

---
**Contributors:** Your Name
