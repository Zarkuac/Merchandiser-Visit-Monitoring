INSERT INTO merchandisers (name, phone, hire_date) VALUES
('Alice Johnson', '123-456-7890', '2023-05-10'),
('Bob Smith', '987-654-3210', '2022-08-15'),
('Charlie Lee', '555-678-1234', '2021-11-01'),
('David Brown', '222-333-4444', '2023-06-01'),
('Eva Green', '333-444-5555', '2023-07-15'),
('Frank White', '444-555-6666', '2023-08-20'),
('Grace Black', '555-666-7777', '2023-09-25'),
('Hannah Blue', '666-777-8888', '2023-10-30');

INSERT INTO stores (name, location, last_visit_date) VALUES
('SuperMart Downtown', '123 Main St, Cityville', '2024-02-15'),
('Grocery Hub', '456 Elm St, Townsville', '2024-01-20'),
('Fresh Market', '789 Oak St, Villagetown', '2024-02-10'),
('Market Square', '321 Market St, Cityville', '2024-03-01'),
('Daily Needs', '654 Pine St, Townsville', '2024-03-05'),
('Value Mart', '987 Maple St, Villagetown', '2024-03-10'),
('Corner Store', '159 Cedar St, Cityville', '2024-03-15'),
('Family Grocer', '753 Birch St, Townsville', '2024-03-20');

INSERT INTO routes (merchandiser_id, store_id, scheduled_date) VALUES
(1, 1, '2024-02-10'),
(2, 2, '2024-02-12'),
(3, 3, '2024-02-14'),
(4, 4, '2024-02-20'),
(5, 5, '2024-02-22'),
(1, 6, '2024-02-25'),
(2, 7, '2024-02-28'),
(3, 8, '2024-03-01');

INSERT INTO visits (merchandiser_id, store_id, visit_date) VALUES
(1, 1, '2024-02-15 10:00:00'),
(2, 2, '2024-02-16 11:30:00'),
(3, 3, '2024-02-17 09:45:00'),
(1, 2, '2024-02-18 14:20:00'),
(1, 3, '2024-02-19 10:15:00'),
(2, 1, '2024-02-20 11:00:00'),
(3, 2, '2024-02-21 09:30:00'),
(4, 4, '2024-02-22 13:00:00'),
(5, 5, '2024-02-23 15:45:00'),
(1, 4, '2024-02-24 10:30:00'),
(2, 3, '2024-02-25 12:00:00'),
(3, 5, '2024-02-26 14:15:00'),
(4, 6, '2024-02-27 11:45:00');