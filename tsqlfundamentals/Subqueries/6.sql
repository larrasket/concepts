SELECT
  custid,
  companyname
FROM
  Sales.Customers AS C
WHERE
  EXISTS (
    SELECT
      *
    FROM
      Sales.Orders AS O
    WHERE
      O.custid = C.custid
      AND O.orderdate >= '20070101'
      AND O.orderdate < '20080101')
  AND NOT EXISTS (
    SELECT
      *
    FROM
      Sales.Orders AS O
    WHERE
      O.custid = C.custid
      AND O.orderdate >= '20080101'
      AND O.orderdate < '20090101')
