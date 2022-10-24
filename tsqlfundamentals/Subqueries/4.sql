SELECT DISTINCT
  country
FROM
  Sales.Customers
WHERE
  country NOT IN (
    SELECT
      E.country
    FROM
      HR.Employees AS E);
