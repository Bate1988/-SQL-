-- 3.������� � ��������� ������, � ������� ���� �������, ������� ��������, � �������� ��������� �������, �������� ����� � ����� ����� ���� ��������� ���� - ������ ����� �� 4 ������, ���� ������ ������ ������ ���� ������, � ����� ������ ����� 100$ ���� ���������� ������ ������ ����� 20. �������� ������� ����� ������� � ������������ �������� ��������� ������ 1000 � ��������� ��������� 100 �������. ���������� ������ ���� �� ������ ��������, ����� ����, ���� �������. 

SElect o.Orderid,OrderDate,O.PickingCompletedWhen,DateName(month,OrderDate)month,DateName(quarter,OrderDate)quarter,(Month(OrderDate)+3)/4 t
From [Sales].[Orders] O  inner join Sales.OrderLines OL on O.OrderID=ol.OrderID
Where UnitPrice>100 or Quantity>20 and O.PickingCompletedWhen is not null
Order by quarter,t,OrderDate
OFFSET 1000 ROWS FETCH NEXT 100 ROWS ONLY