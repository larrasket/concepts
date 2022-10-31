SELECT
    empid,
    orderyear,
    qty,
    (
    SELECT
        SUM(qty)
    FROM
        Sales.VEmpOrders AS V2
    WHERE
      V2.empid = V1.empid
        AND V2.orderyear <= V1.orderyear) AS runqty
FROM
    Sales.VEmpOrders AS V1
ORDER BY
  empid,
  orderyear;
