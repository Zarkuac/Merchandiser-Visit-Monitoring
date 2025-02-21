CREATE TABLE merchandisers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20) UNIQUE,
    hire_date DATE
);

CREATE TABLE stores (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    location VARCHAR(255),
    last_visit_date DATE
);

CREATE TABLE routes (
    id SERIAL PRIMARY KEY,
    merchandiser_id INT REFERENCES merchandisers(id),
    store_id INT REFERENCES stores(id),
    scheduled_date DATE NOT NULL
);

CREATE TABLE visits (
    id SERIAL PRIMARY KEY,
    merchandiser_id INT REFERENCES merchandisers(id),
    store_id INT REFERENCES stores(id),
    visit_date TIMESTAMP DEFAULT NOW()
);