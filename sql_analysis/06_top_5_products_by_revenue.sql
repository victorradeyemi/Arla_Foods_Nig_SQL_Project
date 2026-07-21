/* 
Find the top 5 products by total revenue, including brand and category in the result.
Rationale: JOIN + GROUP BY + ORDER BY ... LIMIT. Standard 'best sellers' business question.
*/

--NB: REVENUE = Selling Price * Quantity Sold --

SELECT
    p.product_id,
    p.product_name,
    ROUND(
    SUM (s.unit_price_ngn * s.quantity),
    0) AS total_revenue,
    p.brand,
    p.category
FROM
    products_arla p
JOIN sales_arla s        
    ON p.product_id = s.product_id
GROUP BY 
    p.product_id,
    p.product_name,
    p.brand,
    p.category
ORDER BY 
    total_revenue DESC
LIMIT 5;    
