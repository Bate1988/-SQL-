--5. 10 ��������� �� ���� ������ � ������ ������� � ������ ����������, ������� ������� �����.

Select top(10) OrderID,OrderDate,CustomerName,FullName 
From [Sales].[Orders]O inner join [Sales].[Customers]C on o.CustomerID=c.CustomerID
join [Application].[People]ap on o.SalespersonPersonID=ap.PersonID
Order by OrderDate desc