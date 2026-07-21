/*
For each quarter of 2025, show total revenue by brand.
Rationale: Date functions (EXTRACT or DATE_TRUNC) combined with JOIN + GROUP BY on two dimensions (quarter and brand) — a small pivot-style question.
*/
--Q1 (January, February & March)

CREATE TABLE january_.... AS
    SELECT *
    FROM 
     
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1;  