-- Все товары, в которых в название есть пометка urgent или название начинается с Animal 


SElect *
From [Warehouse].[StockItems]
wHERE StockItemName lIKE 'Animal%' OR StockItemName lIKE '%urgent%'