SELECT
  O.orderid,
  O.orderdate,
  O.custid,
  O.empid,
  row_number() OVER (ORDER BY orderdate, empid)
FROM
  Sales.Orders AS O
