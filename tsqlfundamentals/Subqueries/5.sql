SELECT
  custid,
  orderid,
  orderdate,
  empid
FROM
  Sales.Orders AS O1
WHERE
  orderdate = (
    SELECT
      MAX(O2.orderdate)
    FROM
      Sales.Orders AS O2
    WHERE
      O2.custid = O1.custid)
ORDER BY
  custid;
