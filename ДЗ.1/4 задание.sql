--4. «аказы поставщикам, которые были исполнены за 2014й год с доставкой Road Freight или Post, добавьте название поставщика, им€ контактного лица принимавшего заказ



SElect PurchaseOrderID,DeliveryMethodName,SupplierName,FullName
From [Purchasing].[PurchaseOrders]PO 
join [Application].[DeliveryMethods]DM on po.DeliveryMethodID=dm.DeliveryMethodID
join [Purchasing].[Suppliers] S on s.SupplierID = po.SupplierID
join [Application].[People] p on p.PersonID=po.ContactPersonID
Where Year(OrderDate) = 2014 and DeliveryMethodName = 'Road Freight' or DeliveryMethodName = 'Post'

 
