create database sales_analysis;
use sales_analysis;
use sales_analysis;
select * from samplesuperstore limit 10;
# Total Sales
select round(sum(sales),2) as Total_Sales from samplesuperstore;
# Total Profit
select round(sum(profit),2) as Total_Profit from samplesuperstore;
# Total Quantity Sold
select sum(Quantity) as Total_Quantity from samplesuperstore;
# Average Discount
select round(avg(Discount)*100,2) as Avg_Discount_Percentage from samplesuperstore;
#Sales by category
select Category, round(sum(sales),2) as Total_Sales from samplesuperstore group by Category order by Total_Sales desc;
# Profit by Category
select Category, round(sum(Profit),2) as Total_Profit from samplesuperstore group by Category order by Total_Profit desc;
# Region Analysis
select Region, round(sum(sales),2) as Total_Sales, round(sum(profit),2) as Total_Profit from samplesuperstore group by Region order by Total_Sales desc; 
# Segment Analysis
select Segment, round(sum(sales),2) as Total_Sales, round(sum(profit),2) as Total_Profit from samplesuperstore group by Segment order by Total_Sales desc;
# Top 10 States by sales
select State, round(sum(sales),2) as Total_Sales from samplesuperstore group by State order by Total_Sales desc limit 10;
# Top 10 states by profit
select State, round(sum(Profit),2) as Total_Profit from samplesuperstore group by State order by Total_Profit desc limit 10;
