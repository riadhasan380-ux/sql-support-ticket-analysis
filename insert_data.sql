INSERT INTO customers VALUES
(1, 'Acme Corp', 'Houston', '2024-01-10'),
(2, 'BlueWave LLC', 'Dallas', '2024-02-15'),
(3, 'Lone Star Retail', 'Austin', '2024-03-05');

INSERT INTO agents VALUES
(101, 'James Carter', 'Tier 1', '2023-06-12'),
(102, 'Sophia Nguyen', 'Tier 1', '2023-08-20');

INSERT INTO categories VALUES
(1, 'Login Issue', 4),
(2, 'Billing', 8),
(3, 'System Error', 6);

INSERT INTO tickets VALUES
(1001, 1, 101, 1, '2025-01-02 08:00:00', '2025-01-02 09:00:00', '2025-01-02 11:00:00', 'High', 'Resolved', 5),
(1002, 2, 102, 2, '2025-01-03 10:30:00', '2025-01-03 13:00:00', '2025-01-04 09:00:00', 'Medium', 'Resolved', 4),
(1003, 3, 101, 3, '2025-01-04 09:15:00', '2025-01-04 12:30:00', '2025-01-05 14:00:00', 'High', 'Resolved', 3);