-- 3. изменить одну запись, из добавленных через UPDATE

Update [Sales].[Customers]
Set CustomerName = 'New name'
Where CustomerName = 'Sahs toy'