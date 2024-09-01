SELECT COUNT(*) FROM pharmacy_sales; 

SELECT COUNT(manufacturer), SUM(total_sales)
FROM pharmacy_sales
WHERE manufacturer = 'Pfizer'; 

SELECT AVG(open) 
FROM stock_prices
WHERE ticker = 'GOOG';

SELECT MIN(open)
FROM stock_prices
WHERE ticker = 'MSFT';

SELECT MAX(open) 
FROM stock_prices
WHERE ticker = 'NFLX';

SELECT ticker, MIN(open) 
FROM stock_prices
GROUP BY ticker 
ORDER BY MIN DESC;

SELECT skill, COUNT(skill) 
FROM candidates
GROUP BY skill
ORDER BY count DESC;

SELECT ticker, MIN(open) 
FROM stock_prices
GROUP BY ticker 
HAVING MIN(open) > 100; 

SELECT candidate_id
FROM candidates
GROUP BY candidate_id
HAVING COUNT(skill) > 2;

SELECT category, COUNT (DISTINCT product)  
FROM product_spend
GROUP BY category;

SELECT drug, total_sales - cogs AS total_profit  
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;

SELECT drug, CEIL(total_sales/units_sold) AS unit_cost
FROM pharmacy_sales
WHERE manufacturer = 'Merck'
ORDER BY unit_cost ASC;

SELECT part, assembly_step 
FROM parts_assembly
WHERE finish_date IS NULL ;