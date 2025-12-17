# Banking Dark Pattern Detector

## 📌 Project Overview
This project detects *hidden banking dark patterns*, such as repeated small debit charges (SMS charges, service fees, penalties) that customers often do not notice.

The system uses *analytical SQL queries* to identify customers who are repeatedly charged small amounts, resulting in significant total loss over time.

---

## 🛠 Technologies Used
- MySQL
- SQL (Joins, Group By, Having, Aggregations)
- GitHub

---

## 🗂 Database Structure
### Tables:
- *customers*
  - customer_id
  - name
  - city

- *transactions*
  - txn_id
  - customer_id
  - txn_date
  - amount
  - txn_type (debit/credit)
  - description

---

## 🚨 Dark Pattern Logic
The project identifies cases where:
- Transaction type is *debit*
- Amount is *small (< ₹200)*
- Same charge repeats *3 or more times*
- Total loss is calculated per customer

This helps detect unethical banking practices that slowly drain money from customers.

---

## 🧠 Core SQL Query
```sql
SELECT 
    c.customer_id,
    c.name,
    c.city,
    t.description,
    COUNT(*) AS times_charged,
    SUM(t.amount) AS total_loss
FROM transactions t
JOIN customers c 
    ON t.customer_id = c.customer_id
WHERE t.txn_type = 'debit'
  AND t.amount < 200
GROUP BY c.customer_id, t.description
HAVING COUNT(*) >= 3;
