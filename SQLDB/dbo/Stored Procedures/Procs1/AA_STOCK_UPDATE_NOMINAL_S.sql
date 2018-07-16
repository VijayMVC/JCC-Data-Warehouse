﻿CREATE PROCEDURE [dbo].[AA_STOCK_UPDATE_NOMINAL_S]
@PS_Module VARCHAR (3) NULL, @PS_Direction VARCHAR (1) NULL, @PS_User_Id VARCHAR (5) NULL, @PS_Date DATETIME NULL, @PS_Year VARCHAR (1) NULL, @PS_Period TINYINT NULL, @PS_Quantity DECIMAL (24, 8) NULL, @PS_Order_Number VARCHAR (15) NULL, @PS_Detail_Primary INT NULL, @PS_Source VARCHAR (1) NULL, @PS_Reference VARCHAR (25) NULL, @PS_Costprice DECIMAL (24, 8) NULL, @PS_Costprice_Base2 DECIMAL (24, 8) NULL, @PS_Costprice_Curr DECIMAL (24, 8) NULL, @PS_Description VARCHAR (30) NULL, @PS_MovementPrimary INT NULL, @PS_MovementValue DECIMAL (24, 8) NULL, @PS_MovementCurrencyValue DECIMAL (24, 8) NULL, @PS_MovementBase2Value DECIMAL (24, 8) NULL, @PS_Line_Discount_Value DECIMAL (24, 8) NULL, @PS_Line_Discount_Curr_Value DECIMAL (24, 8) NULL, @PS_Line_Discount_Base2_Value DECIMAL (24, 8) NULL, @PS_Total_Discount_Value DECIMAL (24, 8) NULL, @PS_Total_Discount_Curr_Value DECIMAL (24, 8) NULL, @PS_Total_Discount_Base2_Value DECIMAL (24, 8) NULL, @PS_StockCode VARCHAR (25) NULL, @PS_StockAnalysis VARCHAR (25) NULL, @PS_SerialNumber VARCHAR (40) NULL, @PS_QuantityOrdered DECIMAL (24, 8) NULL, @PS_UnitQuantity DECIMAL (24, 8) NULL, @PS_CostingProject VARCHAR (10) NULL, @PS_CostingCentre VARCHAR (10) NULL, @PS_CurrencyRate DECIMAL (24, 8) NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


