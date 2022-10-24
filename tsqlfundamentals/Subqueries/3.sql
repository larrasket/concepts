SELECT
  HR.empid,
  HR.firstname,
  HR.lastname
FROM
  HR.Employees HR
WHERE
  HR.empid NOT IN (
    SELECT
      O.empid
    FROM
      Sales.Orders AS O
    WHERE
      O.orderdate >= '20080501')
