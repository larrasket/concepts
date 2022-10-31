WITH EmpsCTE AS (
  SELECT
    empid,
    mgrid,
    firstname,
    lastname
  FROM
    HR.Employees
  WHERE
    empid = 9
  UNION ALL
  SELECT
    P.empid,
    P.mgrid,
    P.firstname,
    P.lastname
  FROM
    EmpsCTE AS C
    JOIN HR.Employees AS P ON C.mgrid = P.empid
)
SELECT
  empid,
  mgrid,
  firstname,
  lastname
FROM
  EmpsCTE;
