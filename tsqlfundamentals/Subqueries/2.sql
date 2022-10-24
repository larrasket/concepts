-- Write a query that returns all orders placed by the customer(s) who placed the highest
-- number of orders. Note that more than one customer might have the same number of orders.
--
-- First let's get the highest number of orders.
DECLARE @HighstNumber AS INT = (
  SELECT
    max(o.[num])
  FROM (
    SELECT
      count(ords.orderid) num
    FROM
      Sales.Orders ords
    GROUP BY
      ords.custid) O)
-- Now we need to get customes that have this numuber.
-- SELECT
--   count(ords.orderid) num,
--   ords.custid
-- FROM
--   Sales.Orders ords
-- GROUP BY
--   ords.custid
-- HAVING
--   count(ords.orderid) = @HighstNumber
-- now do it
SELECT
  O.custid,
  O.orderid,
  O.orderdate,
  O.empid
FROM
  Sales.Orders O
WHERE
  o.custid IN (
    SELECT
      ords.custid
    FROM
      Sales.Orders ords
    GROUP BY
      ords.custid
    HAVING
      count(ords.orderid) = @HighstNumber)
