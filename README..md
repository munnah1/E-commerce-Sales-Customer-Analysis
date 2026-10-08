### About the Project



This is my first end-to-end SQL portfolio project.

I used a 5,000-row e-commerce dataset to practice turning business questions into SQL queries and using the results to understand sales and customer behavior.

I chose this project because I wanted to move beyond practicing SQL syntax and start applying what I had learned to a realistic business dataset.



### Objective



The main goal was to understand:



• Sales performance over time

• Product category performance

• Regional sales performance

• Customer purchasing behavior

• Payment method performance

• Delivery experience and customer ratings

• The relationship between discounts and revenue



##### **Tools**



• MySQL

• MySQL Workbench

• SQL



##### **Analysis**



1\. Monthly Revenue

I converted the order date from text into a usable date format and analyzed revenue by month.

This helped me understand how sales changed throughout the year.



###### 2\. **Top Product Categories**

Electronics was the highest-revenue category, generating 2,223,312.57.

Clothing generated 1,887,131.50, while Home generated 1,196,217.97.



###### 3\. **Category Performance by Region**

Electronics was the highest-revenue category in each of the four regions.

Its revenue by region was:

• East — 505,223.78

• North — 574,351.67

• South — 590,117.88

• West — 553,619.24



###### 4\. **Customer Loyalty**

I grouped customers according to their number of orders:

• One-Time — 1 order

• Returning — 2–3 orders

• Loyal — more than 3 orders



The analysis identified:

• 710 Loyal customers

• 240 Returning customers

• 39 One-Time customers

Loyal customers generated the largest amount of revenue among the three groups.



###### 5\. **Top Loyal Customers**

I used order frequency and revenue to identify the highest-revenue customers within the Loyal customer group.

The top five included:

Customer ID           Orders            Revenue 

1663                   14               22,546.44

1955                   10               19,218.45

1647                   11               18,574.98

1675                   11               18,404.11

1836                    9               17,489.11 



###### 6\. **Customer Revenue Contribution**

I calculated each customer's contribution to the total revenue in the dataset.

The dataset contains 989 customers, with total calculated sales of 6,240,021.96.

The highest individual customer contribution was approximately 0.36%, showing that revenue was spread across a relatively large customer base.



###### 7\. **Payment Method Analysis**

I compared payment methods using total revenue and average customer revenue.



COD recorded the highest total revenue and average revenue among the payment methods in the analysis.



###### 8\. **Delivery Time and Customer Rating**

I grouped orders into Fast, Normal, and Slow delivery categories.

Delivery Category Average RatingOrdersNormal3.031,843Fast2.951,274Slow2.941,883 

Normal delivery had the highest average rating.

This analysis shows an association in the dataset. It does not prove that delivery speed caused the difference in ratings.



###### 9\. **Discount and Revenue Comparison**

I compared average discount, order volume, and revenue across product categories.

Electronics generated the highest revenue while having the lowest average discount among the three categories.

This is a comparison of the variables in the dataset, rather than proof that discounts caused differences in revenue.



###### **What I Practiced**

During this project, I worked with:

• Aggregate functions

• GROUP BY

• HAVING

• ORDER BY

• CASE WHEN

• Common Table Expressions (CTEs)

• Window functions

• RANK()

• PARTITION BY

• Date functions

• Business-focused data analysis



###### **Key Takeaway**

The biggest lesson from this project was that SQL is not just about writing queries. The important part is understanding the question being asked, deciding what information is needed, and using the data to answer it.

This project also helped me become more comfortable with CTEs, window functions, aggregation, ranking, and interpreting SQL results.



###### **Project Files**

The repository contains:

• SQL — queries used for the analysis

• Results — exported CSV results

• Screenshots — selected MySQL result screenshots

• Data — dataset used for the project



###### **What's Next**

I plan to continue working with this dataset by recreating some of the analysis in Excel and eventually building a Power BI dashboard.

This will allow me to take the project from SQL analysis to data visualization and reporting.

