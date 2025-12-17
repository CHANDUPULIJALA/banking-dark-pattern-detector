-- Sample customers
INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Ravi', 'Hyderabad'),
(2, 'Anita', 'Bangalore'),
(3, 'Suresh', 'Chennai'),
(4, 'Kiran', 'Hyderabad');

-- Sample transactions
INSERT INTO transactions (txn_id, customer_id, txn_date, amount, txn_type, description) VALUES
(1, 1, '2025-01-01', 50, 'debit', 'SMS charge'),
(2, 1, '2025-01-05', 50, 'debit', 'SMS charge'),
(3, 1, '2025-01-10', 50, 'debit', 'SMS charge'),
(4, 1, '2025-01-15', 50, 'debit', 'SMS charge'),

(5, 2, '2025-01-03', 3000, 'debit', 'Minimum balance penalty'),
(6, 2, '2025-02-03', 3000, 'debit', 'Minimum balance penalty'),

(7, 3, '2025-01-02', 10000, 'credit', 'Salary'),
(8, 3, '2025-01-20', 4000, 'debit', 'Shopping'),

(9, 4, '2025-01-07', 120, 'debit', 'Service charge'),
(10, 4, '2025-01-14', 120, 'debit', 'Service charge'),
(11, 4, '2025-01-21', 120, 'debit', 'Service charge');
