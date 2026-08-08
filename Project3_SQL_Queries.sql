USE project3_db;

-- 1. Summary Statistics (COUNT, SUM, AVG)
SELECT 
    COUNT(*) AS Total_Orders,
    SUM(`TotalPrice`) AS Total_Revenue,
    ROUND(AVG(`TotalPrice`), 2) AS Average_Order_Value
FROM dataset_cleaned_3;

-- 2. Row-Level Filtering (WHERE)
SELECT * 
FROM dataset_cleaned_3
WHERE `TotalPrice` > 500 AND `Quantity` >= 2;

-- 3. Categorical Grouping (GROUP BY)
SELECT 
    `CouponCode`,
    COUNT(*) AS Orders_Count,
    SUM(`TotalPrice`) AS Total_Sales
FROM dataset_cleaned_3
GROUP BY `CouponCode`;

-- 4. Group-Level Filtering (HAVING)
SELECT 
    `ReferralSource`,
    COUNT(*) AS Total_Orders,
    SUM(`TotalPrice`) AS Total_Revenue
FROM dataset_cleaned_3
GROUP BY `ReferralSource`
HAVING SUM(`TotalPrice`) > 10000;

-- 5. Presentation Sorting (ORDER BY)
SELECT *
FROM dataset_cleaned_3
ORDER BY `TotalPrice` DESC
LIMIT 10;