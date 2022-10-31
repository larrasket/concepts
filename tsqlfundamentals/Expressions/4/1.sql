IF object_id ('Sales.VEmpOrders') IS NOT NULL DROP VIEW Sales.VEmpOrders;

GO CREATE VIEW Sales.VEmpOrders AS
SELECT
  O.empid,
  YEAR (O.orderdate) AS orderyear,
  SUM(D.qty) qty
FROM
  Sales.Orders AS O
  INNER JOIN Sales.OrderDetails AS D ON D.orderid = O.orderid
GROUP BY
  O.empid,
  YEAR (O.orderdate)
