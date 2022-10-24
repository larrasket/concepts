-- Write a query that returns all orders placed on the last day of activity that can be found in the
-- Orders table.
DECLARE @lastDay AS DATETIME = (
  SELECT
    MAX(o.orderdate)
  FROM
    Sales.Orders O
)
SELECT
  O.orderid,
  O.orderdate,
  O.custid,
  O.empid
FROM
  Sales.Orders O
WHERE
  o.orderdate = @lastDay
