SELECT
  CT.empid,
  CT.maxorderdate,
  O.orderid,
  O.custid
FROM (
  SELECT
    O.empid,
    MAX(O.orderdate) AS maxorderdate
  FROM
    Sales.Orders AS O
  GROUP BY
    O.empid) AS CT
  INNER JOIN Sales.Orders AS O ON O.empid = CT.empid
    AND O.orderdate = CT.maxorderdate
