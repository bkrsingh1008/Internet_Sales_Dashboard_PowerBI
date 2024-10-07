-- Fact Internet sales table data cleaning --
select 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount
from 
  FactInternetSales
where 
  LEFT(OrderDateKey, 4) >= year(
    GETDATE()                                -- ensures 2 years back data
  ) -2 order by  orderdatekey desc;

   
-- alternate query -- 
select s.OrderDateKey, d.DateKey, d.FullDateAlternateKey,
s.ProductKey, 
  --OrderDateKey, 
  s.DueDateKey, 
  s.ShipDateKey, 
  s.CustomerKey, 
  s.SalesOrderNumber, 
  s.SalesAmount 
from FactInternetSales s join DimDate d on s.OrderDateKey = d.DateKey where 
  cast (year(FullDateAlternateKey) as int) >= year(
    GETDATE()
  ) -2 order by s.SalesAmount desc;







  use [AdventureWorksDW2022];