SELECT
  ord.custid,
  ord.empid,
  ord.orderdate
FROM
  Sales.Orders AS ord
WHERE
  ord.orderdate BETWEEN '20080101' AND '20080131'
EXCEPT
SELECT
  ord.custid,
  ord.empid,
  ord.orderdate
FROM
  Sales.Orders AS ord
WHERE
  ord.orderdate BETWEEN '20080201' AND '20080229'
