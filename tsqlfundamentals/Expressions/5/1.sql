IF OBJECT_ID ('Production.TopProducts') IS NOT NULL DROP FUNCTION Production.TopProducts;

GO CREATE FUNCTION Production.TopProducts (@supid AS int, @n AS int)
  RETURNS TABLE
  AS RETURN
  SELECT
    TOP (@n) productid,
    productname,
    unitprice
  FROM
    Production.Products
  WHERE
    supplierid = @supid
  ORDER BY
    unitprice DESC;

GO
