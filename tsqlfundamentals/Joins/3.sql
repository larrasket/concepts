select cst.custid, cst.companyname, ords.orderid, ords.orderdate
from Sales.Customers cst
    LEFT JOIN Sales.Orders ords on cst.custid = ords.custid
