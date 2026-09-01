<div align="center">

# 🗄️ PostgreSQL Database Testing

### DBeaver • PostgreSQL • SQL • QA

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-Database-blue?logo=postgresql&logoColor=white)
![DBeaver](https://img.shields.io/badge/DBeaver-SQL%20Testing-382923)
![QA](https://img.shields.io/badge/QA-Database%20Testing-success)

</div>

---

## 🔍 Project Overview

A hands-on database testing project using **PostgreSQL and DBeaver**.

The project demonstrates positive and negative testing, database constraints, data integrity validation, and SQL JOIN operations using **Customers** and **Orders** tables.

---

## 🧪 Test Execution

<p align="center">
  <img src="assets/database-testing-demo.gif" width="750" alt="DBeaver Database Testing Demo"/>
</p>

---

## ✅ Test Scenarios

| Test | Validation | Result |
|---|---|---|
| DB-001 | Valid customer creation | ✅ PASS |
| DB-002 | Invalid phone / CHECK constraint | ✅ PASS |
| DB-003 | Duplicate email / UNIQUE constraint | ✅ PASS |
| DB-004 | Invalid customer / FOREIGN KEY | ✅ PASS |
| DB-005 | Valid order creation | ✅ PASS |
| DB-006 | Customer–Order INNER JOIN | ✅ PASS |

> Negative tests pass when PostgreSQL correctly rejects invalid data.

---

## 🔗 Database Relationship

```text
CUSTOMERS
customer_id (PK)
      │
      │ 1 : Many
      ▼
ORDERS
customer_id (FK)
```

---

## 💻 JOIN Validation

```sql
SELECT
    c.customer_id,
    c.email,
    o.order_id,
    o.product_name
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id;
```

---

## 🛠️ Skills Demonstrated

`PostgreSQL` • `DBeaver` • `SQL` • `Database Testing`  
`Positive Testing` • `Negative Testing` • `PK/FK Validation`  
`CHECK Constraints` • `UNIQUE Constraints` • `JOIN Testing`

---

<div align="center">

### 🔍 Database QA Portfolio Project

</div>
