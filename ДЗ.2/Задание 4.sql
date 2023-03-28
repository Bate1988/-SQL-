--4. Написать MERGE, который вставит вставит запись в клиенты, если ее там нет, и изменит если она уже есть











MERGE [Sales].[Customers] S
USING Customer_copy SC
on S.Customerid=sc.customerid
WHEN MATCHED 
   THEN UPDATE SET  S.CustomerName=SC.CustomerName
WHEN NOT MATCHED 
Then insert ( 
CustomerID,
 CustomerName,
 BillToCustomerID,
 CustomerCategoryID,
 BuyingGroupID,
 PrimaryContactPersonID,
 AlternateContactPersonID,
 DeliveryMethodID,
 DeliveryCityID,
 PostalCityID,
 CreditLimit,
 AccountOpenedDate,
 StandardDiscountPercentage,
 IsStatementSent,
 IsOnCreditHold,
 PaymentDays,
 PhoneNumber,
 FaxNumber,
 DeliveryRun,
 RunPosition,
 WebsiteURL,
 DeliveryAddressLine1,
 DeliveryAddressLine2,
 DeliveryPostalCode,
 DeliveryLocation,
 PostalAddressLine1,
 PostalAddressLine2,
 PostalPostalCode,
 LastEditedBy
)
Values 
(CustomerID,
 SC.CustomerName,
 SC.BillToCustomerID,
 SC.CustomerCategoryID,
 SC.BuyingGroupID,
 SC.PrimaryContactPersonID,
 SC.AlternateContactPersonID,
 SC.DeliveryMethodID,
 SC.DeliveryCityID,
 SC.PostalCityID,
 SC.CreditLimit,
 SC.AccountOpenedDate,
 SC.StandardDiscountPercentage,
 SC.IsStatementSent,
 SC.IsOnCreditHold,
 SC.PaymentDays,
 SC.PhoneNumber,
 SC.FaxNumber,
 SC.DeliveryRun,
 SC.RunPosition,
 SC.WebsiteURL,
 SC.DeliveryAddressLine1,
 SC.DeliveryAddressLine2,
 SC.DeliveryPostalCode,
 SC.DeliveryLocation,
 SC.PostalAddressLine1,
 SC.PostalAddressLine2,
 SC.PostalPostalCode,
 SC.LastEditedBy

)
WHEN NOT MATCHED BY SOURCE THEN
		DELETE
	OUTPUT deleted.*, $action, inserted.*;

	SElect *
	From [Sales].[Customers]
