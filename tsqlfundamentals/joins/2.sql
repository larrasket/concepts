select cst.custid, count(distinct ords.orderid) numorders, sum(dtls.qty) totalqty
from Sales.Customers cst
    join Sales.Orders as ords on ords.custid = cst.custid
    join Sales.OrderDetails as dtls on ords.orderid = dtls.orderid
where cst.country = 'USA'
group by cst.custid
