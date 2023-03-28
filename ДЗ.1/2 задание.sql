-- 2. ѕоставщиков, у которых не было сделано ни одного заказа (потом покажем как это делать через подзапрос, сейчас сделайте через JOIN)

Select ps.SupplierID,ps.SupplierName
From [Purchasing].[Suppliers] PS
left join  [Purchasing].[PurchaseOrders]pp on ps.SupplierID=pp.SupplierID
Where pp.SupplierID is  null

SElect *
From [Purchasing].[Suppliers] 
Where SupplierID not in (Select SupplierID From [Purchasing].[PurchaseOrders] where PurchaseOrderID is not null)