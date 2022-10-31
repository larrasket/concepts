WITH CTE AS (
  SELECT
    O.orderid,
    O.orderdate,
    O.custid,
    O.empid,
    row_number() OVER (ORDER BY orderdate,
      empid) AS rownum
  FROM
    Sales.Orders AS O
)
SELECT
  *
FROM
  CTE
ORDER BY
  CTE.rownum offset 10 ROWS FETCH NEXT 10 ROWS ONLY
