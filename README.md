# Zenith Retail Sales Analysis

### Problem Statement
Zenith Retail, a mid-sized retail company specialising in diverse product categories, seeks to gain a deeper understanding of its sales performance, customer demographics, and purchasing patterns. The company's executive team has requested a comprehensive analysis of sales data to enhance business decision-making and optimise customer engagement strategies. The primary objective of this analysis is to clean and analyse transactional data, uncover key insights, and provide data-driven recommendations that will drive business growth and operational efficiency.

### Background and Overview
Zenith Retail operates across multiple product categories, catering to a diverse customer base. The company records transactional data in a database, capturing essential details such as transaction ID, customer ID, product category, quantity sold, cost of goods sold (COGS), total sale value, and customer demographics (age and gender). However, before conducting meaningful analysis, it is essential to ensure data quality by identifying and handling missing or inconsistent data points.

### To facilitate this analysis, I will:
- Assess the dataset’s completeness by identifying missing or null values and removing incomplete records.
- Evaluate the number of total transactions and unique customers.
- Examine purchasing trends by identifying distinct product categories.
- Calculate key metrics, such as total sales per category, average age of customers purchasing beauty products, and high-value transactions exceeding a total sale of R1,000.
- Analyse customer behavior by determining the number of transactions made by each gender across different categories.
- Identify the top-performing customers based on total sales contributions.

### The key questions to be answered include:
- What is the total number of records and unique customers in the dataset?
- How many distinct product categories exist, and which categories generate the most sales?
- Are there missing values in the dataset, and how does data cleaning impact the integrity of the analysis?
- What are the customer demographics associated with each product category?
- Which transactions have the highest value, and which customers contribute the most revenue?
- How do purchasing behaviors vary across different genders and product categories?

The SQL queries used to clean and transform data: [Here](https://github.com/Buhle-Mkhwanazi/Retail-Sales-Analysis/blob/main/Retail%20Sales%20data%20cleaned.sql)

Targeted SQL queries regarding various business questions can be found: [Here](https://github.com/Buhle-Mkhwanazi/Retail-Sales-Analysis/blob/main/Retail%20Sales%20Analysis%20SQLQuery.sql)

SQL query breakdown with output data: [Here]()

### Key Insights and Recommendations

1. Total Number of Records and Unique Customers
   
   **Findings**: The dataset contains 1997 total records and 155 unique customers.

   **Business Impact**: Understanding the volume of transactions and customer reach helps assess overall business activity.

   **Recommendation**: If the number of unique customers is low compared to total records, Zenith should focus on customer acquisition and retention strategies.

3. Distinct Product Categories and Top-Selling Categories

   **Findings**: There are 3 distinct product categories. The highest revenue-generating category is Category Electronics with R313 810 in sales, followed by Category Clothing and Category Beauty.

   **Business Impact**: Identifying top-performing categories helps optimise inventory and marketing strategies.

   **Recommendation**: Invest in promotions for high-performing categories while reassessing the strategy for lower-performing ones.

5. Data Quality and Missing Values

   **Findings**: The dataset contains 3 missing quantity sold, 10 missing total sales, 10 customer ages values and 3 missing Cost Of Goods Sold(cogs).

   **Business Impact**: Data gaps can affect the accuracy of customer insights and sales tracking.

   **Recommendation**: Implement stricter data validation during entry and consider imputing missing values where necessary.

6. Customer Demographics (Age & Gender) by Category

   **Findings**:
   - The average age of customers purchasing Beauty products is 40+ years.
   - Gender-based trends show that Men are more likely to purchase Electronic and Clothing products.

   **Business Impact**: Understanding demographics allows targeted marketing campaigns.

   **Recommendation**: Leverage this data for personalised promotions, such as age-specific ads or gender-focused recommendations.

8. High-Value Transactions (Above R1,000)

   **Findings**: There were 306 transactions exceeding R1,000, mainly from Electronic and Clothing categories.

   **Business Impact**: High-value transactions indicate premium customer segments.

   **Recommendation**: Identify and engage these high-spending customers with loyalty programs or exclusive offers.

10. Top Revenue-Generating Customers

    **Findings**: The top 10 customers contributed R214 400 in total sales.

    **Business Impact**: These customers are critical for business sustainability.

    **Recommendation**: Implement VIP loyalty programs and personalised outreach to retain these customers.

12. Purchasing Behavior by Gender

    **Findings**:
    - Males made 980 transactions across Beauty, Clothing and Electronic categories.
    - Females made 1017 transactions across Beauty, Clothing and Electronic categories.
    - Certain categories are more popular among specific genders. For example, Electronics is more popular amongst males whilst Beauty is more popular amongst females.
    
    **Business Impact**: Gender-based insights help refine marketing efforts.

    **Recommendation**: Tailor advertising and promotions to align with gender-based purchasing behaviors.

### Final Recommendations for Zenith Retail

- Improve data quality by addressing missing values.
- Optimise inventory and promotions for high and low-performing product categories.
- Use customer demographics to personalise marketing strategies.
- Develop VIP programs for high-value customers.
- Refine gender-based promotions to align with purchasing trends.
