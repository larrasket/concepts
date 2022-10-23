SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
    LEFT OUTER
    JOIN Sales.Orders AS O
    ON O.custid = C.custid
        AND O.orderdate = '20070212'
