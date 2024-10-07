-- DIM_Customer table data cleaning --
select 
  c.CustomerKey as customerKey, 
  c.FirstName as firstName, 
  c.LastName as lastName, 
  CONCAT(c.firstName, ' ', c.lastName) as fullName, 
  case when c.Gender = 'M' then 'Male' when c.Gender = 'F' then 'Female' end as 'Gender', 
  c.DateFirstPurchase as dateFirstPurchase, 
  g.City as customerCity 
from 
  DimCustomer c 
  left join DimGeography g on c.GeographyKey = g.GeographyKey  -- joined with Dim geograpgy table.
  order by c.CustomerKey;

  use [AdventureWorksDW2022]

