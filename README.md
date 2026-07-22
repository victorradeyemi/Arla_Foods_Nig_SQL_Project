# 🥛 Arla Foods Nigeria Sales Analysis with SQL

## Introduction

Every sale tells a story. This project explores a fictional sales dataset inspired by **Arla Foods Nigeria** to answer practical business questions using SQL.

Rather than writing isolated queries, I approached the dataset as though I were supporting a commercial team—analysing revenue, customer purchasing behaviour, product performance, profitability, and regional sales trends.

> **Note**
>
> This is a **synthetic dataset** created for learning purposes. While brands such as **DANO, Lurpak, Castello, Puck, and Arla** reflect Arla Foods' real product portfolio, all customers, transactions and revenue figures are fictional.

---

## 📌 Business Questions

This project answers ten business questions, including:

- Which products generated the highest revenue?
- Which brands performed best after discounts?
- Which customers have never purchased a Lurpak product?
- Which states generated the highest supermarket spending?
- Which recently launched products generated over ₦2 million in revenue?
- How did revenue change across the four quarters of 2025?

---

## 🛠️ Tools

| Tool | Purpose |
|------|---------|
| PostgreSQL | Database management |
| SQL | Data querying and analysis |
| Visual Studio Code | Writing and executing SQL |
| Git & GitHub | Version control and documentation |

---

# 🔎 Analysis

Each query was written to answer a specific business problem rather than simply demonstrate SQL syntax.

### Product Sales
Tracked every transaction involving a selected product together with the purchasing customer and sale date.

📷 *Add screenshot:* `visuals/q1_product_sales.png`

---

### Brand Revenue
Calculated net revenue for every brand after discounts and ranked performance.

📷 *Add screenshot:* `visuals/q2_brand_revenue.png`

---

### Discount Analysis
Compared average discounts across product categories to understand promotional patterns.

---

### Customer Purchase Behaviour
Identified customers who have never purchased a Lurpak product using exclusion logic.

---

### Customer Segmentation
Summarised purchasing behaviour by customer type using total quantity purchased and distinct products.

---

### Product Performance
Ranked the five highest revenue generating products.

📷 *Add screenshot:* `visuals/q6_top_products.png`

---

### Regional Performance
Compared supermarket spending across Nigerian states.

📷 *Add screenshot:* `visuals/q7_state_spend.png`

---

### Profitability
Calculated product profit margins and identified the most profitable products that recorded sales.

---

### Quarterly Revenue
Analysed brand revenue across all four quarters of 2025.

📷 *Add screenshot:* `visuals/q9_quarterly_revenue.png`

---

### Recently Launched Products
Identified products launched from 2023 onwards that exceeded ₦2 million in revenue.

---

# 💡 What I Learned

Working on this project strengthened both my SQL skills and my analytical thinking.

Some of the concepts I reinforced include:

- Writing efficient multi-table joins.
- Choosing the correct aggregate function for different business questions.
- Understanding when to use **WHERE** versus **HAVING**.
- Using `COUNT(DISTINCT)` appropriately.
- Calculating revenue, discounts and profit margins directly in SQL.
- Working with PostgreSQL date functions such as `EXTRACT()`.
- Translating business questions into SQL queries instead of writing queries first.

---

# 📈 Key Takeaways

Although the dataset is fictional, the project demonstrates how SQL can be used to:

- Identify top performing products and brands.
- Analyse customer purchasing behaviour.
- Compare regional sales performance.
- Measure product profitability.
- Produce meaningful business reports from transactional data.

---

# 🎯 Closing Thoughts

This project challenged me to think beyond SQL syntax. Every query began with a business question and ended with a result that could support decision making. It also reinforced the importance of writing clean, readable SQL while building confidence with joins, aggregations, filtering, grouping and analytical functions.

I plan to continue expanding this project by adding more business scenarios, advanced SQL techniques and interactive dashboards using Power BI.
