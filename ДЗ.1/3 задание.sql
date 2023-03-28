-- 3.Продажи с названием месяца, в котором была продажа, номером квартала, к которому относится продажа, включите также к какой трети года относится дата - каждая треть по 4 месяца, дата забора заказа должна быть задана, с ценой товара более 100$ либо количество единиц товара более 20. Добавьте вариант этого запроса с постраничной выборкой пропустив первую 1000 и отобразив следующие 100 записей. Соритровка должна быть по номеру квартала, трети года, дате продажи. 

SElect o.Orderid,OrderDate,O.PickingCompletedWhen,DateName(month,OrderDate)month,DateName(quarter,OrderDate)quarter,(Month(OrderDate)+3)/4 t
From [Sales].[Orders] O  inner join Sales.OrderLines OL on O.OrderID=ol.OrderID
Where UnitPrice>100 or Quantity>20 and O.PickingCompletedWhen is not null
Order by quarter,t,OrderDate
OFFSET 1000 ROWS FETCH NEXT 100 ROWS ONLY