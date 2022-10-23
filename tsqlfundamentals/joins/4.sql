select cst.custid , cst.companyname
from Sales.Customers cst
    left join Sales.Orders ords
    on ords.custid =  cst.custid
where ords.orderid is null
