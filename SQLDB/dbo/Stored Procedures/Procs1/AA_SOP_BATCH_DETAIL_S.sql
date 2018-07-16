﻿CREATE PROCEDURE [dbo].[AA_SOP_BATCH_DETAIL_S]
@PS_Defs VARCHAR (250) NULL, @PS_Validate_Only TINYINT NULL, @PS_Order_Number INT NULL, @PS_Order_Type VARCHAR (3) NULL, @PS_Header_Status VARCHAR (20) NULL, @PS_Urgent_Flag TINYINT NULL, @PS_Subledger VARCHAR (10) NULL, @PS_Archive_Flag TINYINT NULL, @PS_No_Part_Delivery TINYINT NULL, @PS_Account VARCHAR (10) NULL, @PS_Currencycode VARCHAR (6) NULL, @PS_Currency_Rate DECIMAL (24, 8) NULL, @PS_Euro_to_Home_Rate DECIMAL (24, 8) NULL, @PS_EC_Delivery_Terms VARCHAR (3) NULL, @PS_EC_Transaction_Nature VARCHAR (2) NULL, @PS_EC_Transport_Method VARCHAR (1) NULL, @PS_Price_Key INT NULL, @PS_Totaldisc_Perc DECIMAL (24, 8) NULL, @PS_Settlement_Disc1_Perc DECIMAL (24, 8) NULL, @PS_Settlement_Disc2_Perc DECIMAL (24, 8) NULL, @PS_Settlement_Days1 INT NULL, @PS_Settlement_Days2 INT NULL, @PS_Header_LineDisc_Perc DECIMAL (24, 8) NULL, @PS_Delivery_Charge DECIMAL (24, 8) NULL, @PS_Delivery_Charge_Perc DECIMAL (24, 8) NULL, @PS_Delivery_Method VARCHAR (20) NULL, @PS_Minimum_Order_Value DECIMAL (24, 8) NULL, @PS_Order_Terms VARCHAR (40) NULL, @PS_Order_Date DATETIME NULL, @PS_Date_Required DATETIME NULL, @PS_Order_Year VARCHAR (1) NULL, @PS_Order_Period TINYINT NULL, @PS_Batch_Ref VARCHAR (10) NULL, @PS_Customer_Ref VARCHAR (20) NULL, @PS_Customer_User_Key1 VARCHAR (20) NULL, @PS_Customer_User_Key2 VARCHAR (20) NULL, @PS_Customer_User_Key3 VARCHAR (20) NULL, @PS_Order_Description VARCHAR (30) NULL, @PS_Order_Internal_Notes TEXT NULL, @PS_Mail_Order TINYINT NULL, @PS_Authorise_Code VARCHAR (10) NULL, @PS_Credit_Card_No VARCHAR (20) NULL, @PS_Card_Expiry_Date VARCHAR (5) NULL, @PS_MailOrder_Bank_Analysis VARCHAR (25) NULL, @PS_Entry_Type VARCHAR (1) NULL, @PS_Stock_Code VARCHAR (25) NULL, @PS_Price_Code VARCHAR (16) NULL, @PS_Serial_Number VARCHAR (40) NULL, @PS_Sub_Analysis VARCHAR (25) NULL, @PS_QTY_Ordered DECIMAL (24, 8) NULL, @PS_Analysis VARCHAR (25) NULL, @PS_Home_Unit_Cost DECIMAL (24, 8) NULL, @PS_Currency_Unit_Cost DECIMAL (24, 8) NULL, @PS_Costprice DECIMAL (24, 8) NULL, @PS_VAT_Code VARCHAR (4) NULL, @PS_Home_Tax_Amount DECIMAL (24, 8) NULL, @PS_Currency_Tax_Amount DECIMAL (24, 8) NULL, @PS_Home_Linediscval DECIMAL (24, 8) NULL, @PS_Currency_Linediscval DECIMAL (24, 8) NULL, @PS_Linedisc_Perc DECIMAL (24, 8) NULL, @PS_Costheader VARCHAR (10) NULL, @PS_Costcentre VARCHAR (10) NULL, @PS_Line_Detail VARCHAR (240) NULL, @PS_RTP_Flag TINYINT NULL, @PS_Transaction_User_Key1 VARCHAR (20) NULL, @PS_Transaction_User_Key2 VARCHAR (20) NULL, @PS_Transaction_User_Key3 VARCHAR (20) NULL, @PS_User_Id VARCHAR (4) NULL, @PS_Probability_Perc DECIMAL (24, 8) NULL, @PS_Currency_Entry TINYINT NULL, @PS_Address_Num_Delivery INT NULL, @PS_Address_Num_Invoice INT NULL, @PS_Gross_Entry_Mode TINYINT NULL, @PS_Reserve_Stock TINYINT NULL, @PS_Allow_Empty_SubAnalysis TINYINT NULL, @PS_Allow_Empty_Serial_No TINYINT NULL, @PS_Apply_Linked_Items TINYINT NULL, @PS_Price_Line INT NULL, @PS_Header_User_Char1 VARCHAR (20) NULL, @PS_Header_User_Char2 VARCHAR (20) NULL, @PS_Header_User_Char3 VARCHAR (100) NULL, @PS_Header_User_Char4 VARCHAR (100) NULL, @PS_Header_User_Flag1 TINYINT NULL, @PS_Header_User_Flag2 TINYINT NULL, @PS_Header_User_Date1 DATETIME NULL, @PS_Header_User_Date2 DATETIME NULL, @PS_Header_User_Number1 DECIMAL (24, 8) NULL, @PS_Header_User_Number2 DECIMAL (24, 8) NULL, @PS_Detail_User_Char1 VARCHAR (20) NULL, @PS_Detail_User_Char2 VARCHAR (20) NULL, @PS_Detail_User_Char3 VARCHAR (100) NULL, @PS_Detail_User_Char4 VARCHAR (100) NULL, @PS_Detail_User_Flag1 TINYINT NULL, @PS_Detail_User_Flag2 TINYINT NULL, @PS_Detail_User_Date1 DATETIME NULL, @PS_Detail_User_Date2 DATETIME NULL, @PS_Detail_User_Number1 DECIMAL (24, 8) NULL, @PS_Detail_User_Number2 DECIMAL (24, 8) NULL, @PS_OD_PRIMARY INT NULL OUTPUT, @PS_Detail_Date_Required DATETIME NULL, @PS_Do_Not_Update_Stock TINYINT NULL, @PS_Source VARCHAR (1) NULL, @PS_Transaction_Options VARCHAR (30) NULL, @PS_Switch_Issue_Number VARCHAR (2) NULL, @PS_Switch_Issue_Date VARCHAR (5) NULL, @PS_Bank_Ref VARCHAR (4) NULL, @PS_Card_Type VARCHAR (1) NULL, @PS_Due_Days INT NULL, @PS_Anticipated_Days INT NULL, @PS_Order_Line INT NULL, @PS_CurrencySymbol VARCHAR (4) NULL, @PS_CurrencyType CHAR (1) NULL, @PS_Base2_Rate DECIMAL (24, 8) NULL, @PS_Warranty_Matrix VARCHAR (15) NULL, @PS_Warranty_Cost DECIMAL (24, 2) NULL, @PS_Warranty_Text BIT NULL, @PS_Stock_Analysis VARCHAR (25) NULL, @PS_Order_Account VARCHAR (10) NULL, @PS_Delivery_Account VARCHAR (10) NULL, @PS_Allow_Empty_Stock_Analysis TINYINT NULL, @PS_Serial_Temp_ID INT NULL, @PS_Delivery_Charge_Line TINYINT NULL, @PS_LockType VARCHAR (1) NULL, @PS_Header_Primary INT NULL OUTPUT, @PS_Select_First_Sub_Analysis BIT NULL, @PS_Update_Landed_Cost BIT NULL, @PS_Select_First_Serial_No BIT NULL, @PS_CardHolderName VARCHAR (40) NULL, @PS_WorksOrderNumber INT NULL, @PS_EstimateCloseDate DATETIME NULL, @PS_CampaignCode VARCHAR (20) NULL, @PS_CampaignPrimary INT NULL, @PS_CreditController VARCHAR (4) NULL, @PS_CardVisibleDigits VARCHAR (4) NULL, @PS_CardEncryptedDigits VARBINARY (256) NULL, @PS_CardSecurityDigits VARBINARY (256) NULL, @PS_IgnoreCreditCardPaidWarning BIT NULL, @PS_Service BIT NULL, @PS_Recreate_Order_Line BIT NULL, @PS_NewOrder BIT NULL, @PS_UseAPM BIT NULL, @PS_APMCheckOrderKeys BIT NULL, @PS_APMHeaderKey INT NULL, @PS_APMDetailKey INT NULL, @PS_ApplySupersededStockChecks BIT NULL, @PS_User_Char1 VARCHAR (20) NULL, @PS_User_Char2 VARCHAR (20) NULL, @PS_User_Char3 VARCHAR (20) NULL, @PS_User_Char4 VARCHAR (30) NULL, @PS_User_Char5 VARCHAR (30) NULL, @PS_User_Char6 VARCHAR (30) NULL, @PS_User_Char7 VARCHAR (30) NULL, @PS_User_Char8 VARCHAR (30) NULL, @PS_User_Char9 VARCHAR (30) NULL, @PS_User_Char10 VARCHAR (30) NULL, @PS_User_Char11 VARCHAR (30) NULL, @PS_User_Char12 VARCHAR (30) NULL, @PS_User_Char13 VARCHAR (30) NULL, @PS_User_Char14 VARCHAR (30) NULL, @PS_User_Char15 VARCHAR (30) NULL, @PS_User_Char16 VARCHAR (30) NULL, @PS_User_Char17 VARCHAR (30) NULL, @PS_User_Char18 VARCHAR (30) NULL, @PS_User_Char19 VARCHAR (30) NULL, @PS_User_Char20 VARCHAR (30) NULL, @PS_User_Number1 DECIMAL (24, 8) NULL, @PS_User_Number2 DECIMAL (24, 8) NULL, @PS_User_Number3 DECIMAL (24, 8) NULL, @PS_User_Number4 DECIMAL (24, 8) NULL, @PS_User_Number5 DECIMAL (24, 8) NULL, @PS_User_Number6 DECIMAL (24, 8) NULL, @PS_User_Number7 DECIMAL (24, 8) NULL, @PS_User_Number8 DECIMAL (24, 8) NULL, @PS_User_Number9 DECIMAL (24, 8) NULL, @PS_User_Number10 DECIMAL (24, 8) NULL, @PS_User_Number11 DECIMAL (24, 8) NULL, @PS_User_Number12 DECIMAL (24, 8) NULL, @PS_User_Number13 DECIMAL (24, 8) NULL, @PS_User_Number14 DECIMAL (24, 8) NULL, @PS_User_Number15 DECIMAL (24, 8) NULL, @PS_User_Number16 DECIMAL (24, 8) NULL, @PS_User_Number17 DECIMAL (24, 8) NULL, @PS_User_Number18 DECIMAL (24, 8) NULL, @PS_User_Number19 DECIMAL (24, 8) NULL, @PS_User_Number20 DECIMAL (24, 8) NULL, @PS_User_Date1 DATETIME NULL, @PS_User_Date2 DATETIME NULL, @PS_User_Date3 DATETIME NULL, @PS_User_Date4 DATETIME NULL, @PS_User_Date5 DATETIME NULL, @PS_User_Date6 DATETIME NULL, @PS_User_Date7 DATETIME NULL, @PS_User_Date8 DATETIME NULL, @PS_User_Date9 DATETIME NULL, @PS_User_Date10 DATETIME NULL, @PS_User_Flag1 BIT NULL, @PS_User_Flag2 BIT NULL, @PS_User_Flag3 BIT NULL, @PS_User_Flag4 BIT NULL, @PS_User_Flag5 BIT NULL, @PS_User_Flag6 BIT NULL, @PS_User_Flag7 BIT NULL, @PS_User_Flag8 BIT NULL, @PS_User_Flag9 BIT NULL, @PS_User_Flag10 BIT NULL, @PS_AccrualNominalAccount VARCHAR (25) NULL, @PS_AccrualNoOfPeriods SMALLINT NULL, @PS_AccrualScheduleStartDate DATETIME NULL, @PS_AccrualScheduleDatesXML XML NULL, @PS_UseMultipleDueDates BIT NULL, @PS_MultipleDueDateDepositPerc DECIMAL (16, 2) NULL, @PS_MultipleDueDateDepositVal FLOAT (53) NULL, @PS_MultipleDueDateStartDate DATETIME NULL, @PS_MultipleDueDatePaymentNo INT NULL, @PS_MultipleDueDatesXML XML NULL, @PS_MultipleDueDatesRelativeToTaxDate BIT NULL, @PS_CheckSubAnalysisSecurityLevels BIT NULL, @PS_Replace_Notes TEXT NULL, @PS_Append_Notes TEXT NULL, @PS_SOP_ORDER_ID INT NULL, @PS_SOP_ORDER_LINE_NO INT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


