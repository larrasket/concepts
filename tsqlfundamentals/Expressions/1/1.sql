SELECT
  O.empid,
  MAX(O.orderdate)
FROM
  Sales.Orders AS O
GROUP BY
  O.empid
