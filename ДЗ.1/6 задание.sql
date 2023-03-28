--6. ¬се ид и имена клиентов и их контактные телефоны, которые покупали товар Chocolate frogs 250g




Select ContactPersonID,FullName,PhoneNumber
From [Sales].[Orders] O join [Sales].[OrderLines]ol on o.OrderID=ol.OrderId
join [Application].[People] ap on o.ContactPersonID=ap.PersonID
Where Description='Chocolate frogs 250g' 
Order by ContactPersonID






