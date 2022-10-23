SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
    LEFT JOIN Sales.Orders AS O
    ON O.custid = C.custid
WHERE  o.orderdate = '20070212' or o.orderdate is null


