---Data Cleaning

--Checking for any null values in the dataset and deleting records with missing data
SELECT * FROM Retail_Sales
	WHERE 
		transactions_id IS NULL
		OR sale_date IS NULL
		OR sale_time IS NULL
		OR gender IS NULL
		OR category IS NULL
		OR quantity IS NULL
		OR cogs IS NULL
		OR total_sale IS NULL

---Deleting the null values in the dataset
DELETE FROM Retail_Sales
	WHERE 
		transactions_id IS NULL
		OR sale_date IS NULL
		OR sale_time IS NULL
		OR gender IS NULL
		OR category IS NULL
		OR quantity IS NULL
		OR cogs IS NULL
		OR total_sale IS NULL

---Data analysis and findings
SELECT *FROM Retail_Sales
	WHERE sale_date = '2022-11-05'