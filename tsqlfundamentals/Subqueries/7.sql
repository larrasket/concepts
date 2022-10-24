SELECT
  cst.custid,
  cst.companyname
FROM
  Sales.Customers cst
WHERE
  cst.custid IN ( SELECT DISTINCT
      O.custid
    FROM
      Sales.Orders O
    WHERE
      O.orderid IN (
        SELECT
          dtsl.orderid
        FROM
          Sales.OrderDetails dtsl
        WHERE
          dtsl.productid = '12'))
