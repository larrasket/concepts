SELECT
  S.supplierid,
  S.companyname,
  P.productid,
  P.productname,
  P.unitprice
FROM
  Production.Suppliers AS S
  CROSS APPLY Production.TopProducts (S.supplierid, 2) AS P;
