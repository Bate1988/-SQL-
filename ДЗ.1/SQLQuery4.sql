-- ��� ������, � ������� � �������� ���� ������� urgent ��� �������� ���������� � Animal 
SElect *
From [Warehouse].[StockItems]
wHERE StockItemName lIKE 'Animal%' OR StockItemName lIKE '%urgent%'

--�����������, � ������� �� ���� ������� �� ������ ������ (����� ������� ��� ��� ������ ����� ���������, ������ �������� ����� JOIN)

Select ps.SupplierID,ps.SupplierName
From [Purchasing].[Suppliers] PS
left join  [Purchasing].[PurchaseOrders]pp on ps.SupplierID=pp.SupplierID
Where pp.SupplierID is  null

SElect *
From [Purchasing].[Suppliers] 
Where SupplierID not in (Select SupplierID From [Purchasing].[PurchaseOrders] where PurchaseOrderID is not null)

--������� � ��������� ������, � ������� ���� �������, ������� ��������, � �������� ��������� �������, �������� ����� � ����� ����� ���� ��������� ���� - ������ ����� �� 4 ������, ���� ������ ������ ������ ���� ������, � ����� ������ ����� 100$ ���� ���������� ������ ������ ����� 20. �������� ������� ����� ������� � ������������ �������� ��������� ������ 1000 � ��������� ��������� 100 �������. ���������� ������ ���� �� ������ ��������, ����� ����, ���� �������. 








