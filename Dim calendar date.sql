-- Dim Date table data cleaning
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
