# Arla Foods Nigeria — Practice SQL Database

A relational database project modelled on Arla Foods' Nigerian product and customer footprint, built for SQL practice (joins, aggregation, subqueries, window-style analysis).

> **Note:** This is a synthetic practice dataset. Product names and brand portfolio (DANO, Arla, Lurpak, Castello, Puck) reflect Arla's real brand lineup in Nigeria, but individual SKUs, prices, costs, and all customer and sales records are generated for practice purposes — not actual Arla business data.

## Schema

Three tables, star-schema style:

| Table | Rows | Description |
|---|---:|---|
| `products` | 224 | ERP-style product master — one row per SKU |
| `customers` | 220 | Distributors, retailers, HORECA (hotel/restaurant/cafe) accounts |
| `sales` | 1,000 | Transactions for the 2025 calendar year, referencing `product_id` and `customer_id` |

**Total: 1,444 rows**

`sales` is the fact table; `products` and `customers` are dimension tables it joins against.

## Files

- `schema.sql` — `CREATE TABLE` statements, primary/foreign keys, indexes
- `load_data.sql` — `COPY` statements to load the CSVs (fill in your local file path first)
- `products.csv`, `customers.csv`, `sales.csv` — the data
- `Data_Dictionary.md` — column-by-column reference for all three tables
- `Project_Questions.docx` — 10 practice SQL exercises with rationale

## Setup

1. Create the database and run `schema.sql`.
2. Open `load_data.sql`, replace the empty `''` in each `COPY` statement with the full path to the matching CSV on your machine.
3. Run `load_data.sql` — load `products` and `customers` before `sales`, since `sales` has foreign keys pointing to both.
4. Work through `Project_Questions.docx`.

## Brand & category coverage

| Brand | Categories |
|---|---|
| DANO | Milk Powder, UHT Milk, Flavoured Milk, Yoghurt, Dairy Dessert |
| Arla | UHT Milk, Butter, Yoghurt, Cream Cheese |
| Lurpak | Butter |
| Castello | Cheese |
| Puck | Cream Cheese, Cooking Cream, Whipping Cream, Cheese |
