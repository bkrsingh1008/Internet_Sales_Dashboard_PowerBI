-- Dim Products table data cleaning --
select 
  p.ProductKey, 
  p.ProductAlternateKey as [Product Item Code], 
  p.EnglishProductName as [Product Name], 
  p.size as [Product Size], 
  p.ProductLine as [Product Line], 
  p.Color as [Product Color], 
  p.ModelName as [Product Model Name], 
  p.EnglishDescription as [Product Description], 
  ISNULL(p.Status, 'Outdate') as [Product Status], 
  
  /* case 
    when p.Status is null then 'Outdate'
    else  p.Status end as 'Status', */
  ps.EnglishProductSubcategoryName as [Product Sub Category], 
  pc.EnglishProductCategoryName as [Product Catgeory] 
from 
  DimProduct p 
  left join DimProductSubcategory ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey -- joined with dim product subcategory table
  left join DimProductCategory pc on pc.ProductCategoryKey = ps.ProductCategoryKey -- joined with dim product category table
order by 
  p.ProductKey asc;





  use [AdventureWorksDW2022];
