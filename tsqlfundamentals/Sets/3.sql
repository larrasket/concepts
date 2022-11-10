SELECT
  custid,
  empid
FROM
  Sales.Orders
WHERE
  orderdate >= '20080101'
  AND orderdate < '20080201'
INTERSECT
SELECT
  custid,
  empid
FROM
  Sales.Orders
WHERE
  orderdate >= '20080201'
  AND orderdate < '20080301'
