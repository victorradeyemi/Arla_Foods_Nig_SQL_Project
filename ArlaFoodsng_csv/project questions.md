
#**Arla Foods Nigeria — SQL Practice Questions**
Tables: products, customers, sales
------------------------------------
------------------------------------

1. List all sales transactions for the product "DANO Full Cream Milk Powder 400g", showing customer name and sale date.
Rationale: Two-table JOIN (sales → products) with a WHERE filter. The simplest warm-up query.
--

2. Calculate net revenue per line (quantity × unit_price_ngn × (1 − discount_pct/100)) and find total net revenue per brand, ranked highest to lowest.
Rationale: JOIN + a computed expression inside SUM + GROUP BY. Tests whether discount is correctly factored into revenue rather than using list price.
--

3. Which product category has the highest average discount_pct given across all sales?
Rationale: JOIN + GROUP BY + AVG. Straightforward aggregation, but on a column (discount) rather than the more obvious revenue/quantity.
--

4. List customers who have never purchased a Lurpak product.
Rationale: Anti-join pattern — LEFT JOIN ... IS NULL or NOT IN subquery. Tests exclusion logic.
--

5. For each customer_type, show total quantity purchased and the number of distinct products bought.
Rationale: JOIN + GROUP BY + COUNT(DISTINCT ...) alongside SUM. Tests combining two different aggregate functions in one query.
--

6. Find the top 5 products by total revenue, including brand and category in the result.
Rationale: JOIN + GROUP BY + ORDER BY ... LIMIT. Standard 'best sellers' business question.
--

7. Among Supermarket-type customers only, which state generated the highest total spend?
Rationale: Three-condition query: JOIN + WHERE filter on customer_type + GROUP BY state + aggregation. Tests filtering before grouping.
--

8. Calculate profit margin (unit_price_ngn − unit_cost_ngn) for each product, and list the 10 most profitable products that have actually recorded at least one sale.
--

Rationale: Requires an EXISTS/subquery or JOIN with DISTINCT to exclude products with zero sales, combined with a margin calculation — tests filtering dimension rows by fact-table activity.
--

9. For each quarter of 2025, show total revenue by brand.
Rationale: Date functions (EXTRACT or DATE_TRUNC) combined with JOIN + GROUP BY on two dimensions (quarter and brand) — a small pivot-style question.
--

10. Find products launched in 2023 or later that have generated more than ₦2,000,000 in total revenue.
Rationale: JOIN + GROUP BY + HAVING, combined with a WHERE filter on launch_year — tests filtering both before and after aggregation in the same query.
