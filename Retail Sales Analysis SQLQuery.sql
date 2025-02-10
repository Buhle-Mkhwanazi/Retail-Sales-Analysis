---Data analysis and findings
SELECT *FROM Retail_Sales
	WHERE sale_date = '2022-11-05'

---calculating the total sales for each category
---average age of customers who purchased items from the 'Beauty' category
SELECT
    ROUND(AVG(age), 2) as avg_age
FROM Retail_Sales
WHERE category = 'Beauty'

---Transactions where the total_sale is greater than 1000
SELECT * FROM Retail_Sales
WHERE total_sale > 1000

---Total number of transactions (transaction_id) made by each gender in each category
SELECT category, gender,
    COUNT(*) as total_trans
FROM Retail_Sales
GROUP BY category, gender
ORDER BY 1

---Number of unique customers who purchased items from each category
SELECT 
    category,    
    COUNT(DISTINCT customer_id) as cnt_unique_cs
FROM Retail_Sales
GROUP BY category