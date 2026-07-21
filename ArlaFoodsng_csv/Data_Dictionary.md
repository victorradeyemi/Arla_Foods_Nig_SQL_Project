# Data Dictionary

## `products`

| Column | Type | Description |
|---|---|---|
| `product_id` | INT, PK | Unique product identifier |
| `sku` | VARCHAR(20) | SKU code, format `BRAND-CATEGORY-###` (e.g. `DAN-MPW-001`) |
| `product_name` | VARCHAR(100) | Full product name including variant and pack size |
| `brand` | VARCHAR(20) | DANO, Arla, Lurpak, Castello, or Puck |
| `category` | VARCHAR(30) | Milk Powder, UHT Milk, Flavoured Milk, Butter, Cheese, Cream Cheese, Cooking Cream, Whipping Cream, Dairy Dessert, or Yoghurt |
| `pack_size` | VARCHAR(20) | Package size, e.g. `400g`, `500ml`, `1kg Block` |
| `unit_price_ngn` | NUMERIC(10,2) | Reference selling price in Naira |
| `unit_cost_ngn` | NUMERIC(10,2) | Estimated cost per unit — enables margin/profitability analysis alongside `unit_price_ngn` |
| `launch_year` | INT | Year the SKU was introduced |
| `active_status` | VARCHAR(20) | `Active` or `Discontinued` |

## `customers`

| Column | Type | Description |
|---|---|---|
| `customer_id` | INT, PK | Unique customer identifier |
| `customer_name` | VARCHAR(100) | Business name |
| `customer_type` | VARCHAR(30) | Distributor, Supermarket, Retail Store, Pharmacy, Hotel, Restaurant, Convenience Store, Bakery, or Cafe |
| `state` | VARCHAR(50) | Nigerian state |
| `geopolitical_zone` | VARCHAR(50) | One of the six geopolitical zones |
| `registration_date` | DATE | Date the customer was onboarded |
| `contact_channel` | VARCHAR(30) | Primary ordering channel — Field Sales Rep, WhatsApp Order, Distributor Portal, Phone Order, or Walk-in |

## `sales`

| Column | Type | Description |
|---|---|---|
| `sale_id` | INT, PK | Unique transaction identifier |
| `customer_id` | INT, FK → `customers.customer_id` | Buyer on this transaction |
| `product_id` | INT, FK → `products.product_id` | Product sold |
| `quantity` | INT | Units sold on this transaction |
| `unit_price_ngn` | NUMERIC(10,2) | Actual transacted price (may differ slightly from `products.unit_price_ngn` due to negotiation/promotions) |
| `discount_pct` | NUMERIC(5,2) | Discount applied, as a percentage (0–20) |
| `sale_date` | DATE | Transaction date, within calendar year 2025 |

### Notes for analysis

- Net revenue per line = `quantity * unit_price_ngn * (1 - discount_pct/100)` — this isn't pre-computed in the table, so it's a good first query to write.
- Margin per unit = `products.unit_price_ngn - products.unit_cost_ngn` (requires a join from `sales` to `products`).
- `active_status = 'Discontinued'` products were excluded from `sales` generation, so all transactions reference currently active SKUs.
