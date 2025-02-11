---Data analysis and findings

-- 1. Total number of records in the dataset
SELECT COUNT(*) AS total_records FROM Retail_Sales;

-- 2. Total number of unique customers
SELECT COUNT(DISTINCT customer_id) AS total_unique_customers FROM Retail_Sales;

-- 3. Number of distinct product categories
SELECT COUNT(DISTINCT category) AS distinct_categories FROM Retail_Sales;

-- 4. Total sales per category (to identify the highest revenue-generating categories)
SELECT category, SUM(total_sale) AS total_sales
FROM Retail_Sales
GROUP BY category
ORDER BY total_sales DESC;

-- 5. Checking for missing values in key fields (data quality check)
SELECT 
    SUM(CASE WHEN transactions_id IS NULL THEN 1 ELSE 0 END) AS missing_transaction_ids,
    SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS missing_customer_ids,
    SUM(CASE WHEN category IS NULL THEN 1 ELSE 0 END) AS missing_categories,
    SUM(CASE WHEN quantiy IS NULL THEN 1 ELSE 0 END) AS missing_quantity_sold,
    SUM(CASE WHEN total_sale IS NULL THEN 1 ELSE 0 END) AS missing_total_sales,
    SUM(CASE WHEN age IS NULL THEN 1 ELSE 0 END) AS missing_customer_ages,
    SUM(CASE WHEN gender IS NULL THEN 1 ELSE 0 END) AS missing_customer_genders,
	SUM(CASE WHEN cogs IS NULL THEN 1 ELSE 0 END) AS missing_cogs
FROM [Retail Sales Raw Data]

-- 6. Customer demographics (age and gender) per category
SELECT category, gender, ROUND(AVG(CAST(age AS FLOAT)), 2) AS avg_age, COUNT(*) AS total_customers
FROM Retail_Sales
GROUP BY category, gender
ORDER BY category;

-- 7. Transactions where the total sale is greater than R1,000
SELECT * FROM Retail_Sales WHERE total_sale > 1000;
	--Return one category with the most high-value transactions that are greater than R1000.
	SELECT category, transaction_count 
		FROM (
    			SELECT category, COUNT(*) AS transaction_count, 
          		 RANK() OVER (ORDER BY COUNT(*) DESC) AS rank
    			FROM Retail_Sales
   			 WHERE total_sale > 1000
    			GROUP BY category
			) ranked_categories
		WHERE rank = 2;

-- 8. Top revenue-generating customers
SELECT TOP 10 customer_id, SUM(total_sale) AS total_spent
FROM Retail_Sales
GROUP BY customer_id
ORDER BY total_spent DESC;

-- 9. Total number of transactions made by each gender in each category
SELECT category, gender, COUNT(*) AS total_trans
FROM Retail_Sales
GROUP BY category, gender
ORDER BY category;

-- 10. Total sales contribution by gender
SELECT gender, SUM(total_sale) AS total_sales
FROM Retail_Sales
GROUP BY gender;
