-- Run schema.sql first to create the tables.
-- Paste these lines into a psql terminal (not a plain SQL editor pane -- \copy is a psql-only command).
-- Replace the empty '' with the full local file path to each CSV after downloading.
-- Load order matters: products_arla and customers_arla first (parents), then sales_arla (references both).

\copy products_arla FROM 'C:\Users\USER\Documents\SQL_Project_Data_Job_Analysis_VS_Code\Arla_Foods_Nig_SQL_Project\ArlaFoodsng_csv\products_arlafoodsng.csv' WITH (FORMAT csv, HEADER true)

\copy customers_arla FROM 'C:\Users\USER\Documents\SQL_Project_Data_Job_Analysis_VS_Code\Arla_Foods_Nig_SQL_Project\ArlaFoodsng_csv\customers_arlafoodsng.csv' WITH (FORMAT csv, HEADER true)

\copy sales_arla FROM 'C:\Users\USER\Documents\SQL_Project_Data_Job_Analysis_VS_Code\Arla_Foods_Nig_SQL_Project\ArlaFoodsng_csv\sales_arlafoodsng.csv' WITH (FORMAT csv, HEADER true)
