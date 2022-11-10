SELECT
  country,
  region,
  city
FROM
  HR.Employees
UNION ALL
SELECT
  country,
  region,
  city
FROM
  Production.Suppliers;

SELECT
  country,
  region,
  city
FROM (
  SELECT
    1 AS sortcol,
    country,
    region,
    city
  FROM
    HR.Employees
  UNION ALL
  SELECT
    2,
    country,
    region,
    city
  FROM
    Production.Suppliers) AS D
ORDER BY
  sortcol,
  country,
  region,
  city;
