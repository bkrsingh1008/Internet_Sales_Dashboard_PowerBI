# Internet_Sales_Dashboard_PowerBI

Overview
-----------------
This project focuses on transforming static sales reports into dynamic, interactive visual dashboards to provide deeper insights into internet sales performance. The goal is to offer a more flexible and user-friendly way to analyze sales data, identify trends, and measure performance across different dimensions, including products, clients, time periods, and sales personnel.

The project involves empowers the sales team to better track internet sales, evaluate customer and product performance, and compare results against the 2021 budget. The goal was to move away from static reports and provide a dynamic, interactive solution using Power BI.

Data Cleansing & Transaformation Using SQL Server
------------------------------------------------------
To build the required data model for analysis and meet the business objectives outlined, we extracted and processed the following tables using SQL.
Additionally, an external data source containing the sales budget, provided in Excel format, was integrated into the data model during the later stages of the process.

Below are the SQL queries used for cleansing and transforming the necessary data.

Dim_Calendar
SELECT [DateKey]
      ,[FullDateAlternateKey] as date
   --   ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] as day
    --  ,[SpanishDayNameOfWeek]
    --  ,[FrenchDayNameOfWeek]
    --  ,[DayNumberOfMonth]
    --  ,[DayNumberOfYear]
      ,[WeekNumberOfYear] as weekNo
      ,[EnglishMonthName] as month,
	  LEFT(EnglishMonthName, 3) as shortMonth
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] as monthNo
      ,[CalendarQuarter] as quarter
      ,[CalendarYear] as year
   --   ,[CalendarSemester]
   --   ,[FiscalQuarter]
   --   ,[FiscalYear]
   --   ,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear >= 2022;
