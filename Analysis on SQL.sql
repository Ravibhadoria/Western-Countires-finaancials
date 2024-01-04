create database Findata;  -- This will create the database

use Findata; -- This will use the required database

CREATE TABLE Western_Countries_FinData (
    Segment VARCHAR(20),
    Country VARCHAR(30),
    Product VARCHAR(15),
    Discount_Band VARCHAR(8),
    Units_sold INT,
    Manufacturing_Price INT,
    Sale_Price INT,
    Gross_Sales INT,
    Discounts INT,
    Sales INT,
    COGS INT,
    Profit INT,
    Date DATE,				
    Month_Number INT,
    Month_Name VARCHAR(10),
    Year Text
);  -- This will create the table as required

SELECT * FROM Western_Countries_FinData; -- this will showw all the data in the table available

SELECT COUNT(*) AS total_rows FROM Western_countries_findata; -- This will give the total number of rows in table

SELECT sum(units_sold) AS TotalUnitSold from western_countries_findata; -- This will give the count total units sold

select segment, sum(sales) as totalsales
from western_countries_findata
group by segment; -- This will give the Total sales segment wise

SELECT SUM(sales) AS Channelsales
FROM western_countries_findata
WHERE segment = 'channel partners'; -- This will give the total sales done to Channel Partners

select sum(sales) as totalSales 
from western_countries_findata; -- this will give the total sales done

SELECT SUM(units_sold) AS yearly_sales, year AS year
FROM western_countries_findata
GROUP BY year; -- This will give the total units sold yearly

select distinct country from western_countries_findata; -- This will give the Name of all countries

SELECT Product, SUM(Units_sold) AS TotalUnitsSold
FROM western_countries_findata
GROUP BY Product
ORDER BY TotalUnitsSold DESC
LIMIT 1;  -- This will give us the product which has maximum units sold

SELECT Product, SUM(Profit) AS MostProfitableProduct
FROM western_countries_findata
GROUP BY Product
ORDER BY MostProfitableProduct DESC
LIMIT 1;  -- this will give the name of most profitable product

select sum(profit) AS TotalProfit, year as YEAR
from western_countries_findata
group by year; -- this will give the total profit year wise

SELECT Year,
       SUM(COGS) AS TotalCOGS,
       SUM(Profit) AS TotalProfit,
       SUM(Profit) - SUM(COGS) AS ProfitDifference
FROM western_countries_findata
GROUP BY Year; -- this will represent the impact of manufacturing cost on profits

SELECT segment, sum(Profit) as ProfitbySegment
from western_countries_findata
group by Segment; -- this will give the total profit segment wise

SELECT country
FROM western_countries_findata
GROUP BY country
ORDER BY SUM(sales) DESC
LIMIT 1; -- this will give the name of country with maximum sales

SELECT country
FROM western_countries_findata
GROUP BY country
ORDER BY SUM(sales) ASC
LIMIT 1; -- this will give the name of country with Minimum sales

SELECT product, MAX(profit) AS max_profit
FROM western_countries_findata
GROUP BY product
ORDER BY max_profit DESC
limit 1; -- This will give the name of product delivering maximum Profit

SELECT Country,
    SUM(Profit) AS Total_Profit,
    SUM(Sales) AS Total_Sales,
    (SUM(Profit) * 100.0 / (SUM(Sales))) AS Profit_Margin
FROM Western_Countries_FinData
GROUP BY Country; -- this will give country wise profit margin

SELECT Product, SUM(Units_Sold) AS Total_Units_Sold, SUM(Gross_Sale) AS Total_Gross_Sales
FROM Western_countries_findata
GROUP BY Product
ORDER BY Total_Gross_Sales DESC;  -- this will give the Product performance Analysis

SELECT Discount_Band, SUM(Gross_Sale) AS Total_Gross_Sales
FROM Western_countries_findata
GROUP BY Discount_Band; -- this will give the discount analysis

SELECT Segment, SUM(Sales) AS Total_Sales, AVG(COGS) AS Avg_Cost_of_Goods_Sold
FROM western_countries_findata
GROUP BY Segment;  -- this will give the Segmentation analysis

SELECT Product, AVG(Sale_Price - Manufacturing_Price) AS Average_Profit_Per_Unit
FROM western_countries_findata
GROUP BY Product;  -- This will give the Average profit per unit

SELECT Product, SUM(Profit) AS Total_Profit
FROM Western_countries_findata
GROUP BY Product
ORDER BY Total_Profit DESC; -- This will give the profit figures according to Product and profit in descending order












