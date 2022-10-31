USE TSQL2012;

IF OBJECT_ID ('dbo.GetCustOrders') IS NOT NULL DROP FUNCTION dbo.GetCustOrders;

GO CREATE FUNCTION dbo.GetCustOrders (@cid AS int)
  RETURNS TABLE
  AS RETURN
  SELECT
    orderid,
    custid,
    empid,
    orderdate,
    requireddate,
    shippeddate,
    shipperid,
    freight,
    shipname,
    shipaddress,
    shipcity,
    shipregion,
    shippostalcode,
    shipcountry
  FROM
    Sales.Orders
  WHERE
    custid = @cid;

GO
