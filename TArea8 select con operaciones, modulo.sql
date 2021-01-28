SELECT [MaxQty],[MinQty],dif = ([MaxQty]-[MinQty]), [SpecialOfferID], [Description]
FROM [Sales].[SpecialOffer]

SELECT [MaxQty],[MinQty],([MaxQty]-[MinQty]) as dif, [SpecialOfferID], [Description]
FROM [Sales].[SpecialOffer]

Select [MinQty],[DiscountPct],[MinQty]*[DiscountPct]
from [Sales].[SpecialOffer]

select [MaxQty],[DiscountPct], ISNULL([MaxQty],10)*[DiscountPct],[SpecialOfferID],[Description]
from [Sales].[SpecialOffer]

--División efectúa la división entre dos números pudiendo ser el resultado decimal. 5/2 = 2,5
--Módulo efectúa la división entre dos números hasta el entero despreciando el resto. 5%2 = 2