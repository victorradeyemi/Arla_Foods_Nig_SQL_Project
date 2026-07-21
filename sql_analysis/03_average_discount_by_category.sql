/* 
Which product category has the highest average discount_pct given across all sales?
Rationale: JOIN + GROUP BY + AVG. Straightforward aggregation, but on a column (discount) rather than the more obvious revenue/quantity.
*/

SELECT
    p.category,
    ROUND(
    AVG(s.discount_pct),
    0) AS avg_discount
FROM
    sales_arla s 
JOIN products_arla p
    ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY avg_discount DESC;   

--