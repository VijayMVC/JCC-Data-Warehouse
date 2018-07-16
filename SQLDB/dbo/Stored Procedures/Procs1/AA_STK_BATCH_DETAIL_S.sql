﻿CREATE PROCEDURE [dbo].[AA_STK_BATCH_DETAIL_S]
@PS_Default_String VARCHAR (100) NULL, @PS_Validate_Only TINYINT NULL, @PS_User_Id VARCHAR (4) NULL, @PS_Primary INT NULL OUTPUT, @PS_Stock_Transaction_Type VARCHAR (3) NULL, @PS_Type CHAR (1) NULL, @PS_Reference VARCHAR (10) NULL, @PS_Batch_Reference VARCHAR (10) NULL, @PS_Date DATETIME NULL, @PS_Year CHAR (1) NULL, @PS_Period TINYINT NULL, @PS_Movement_Direction CHAR (1) NULL, @PS_Stock_Code VARCHAR (25) NULL, @PS_Serial_Number VARCHAR (40) NULL, @PS_Sub_Analysis_Code VARCHAR (25) NULL, @PS_Quantity DECIMAL (24, 8) NULL, @PS_Price_Line_Code VARCHAR (3) NULL, @PS_Price DECIMAL (24, 8) NULL OUTPUT, @PS_Home_Value DECIMAL (24, 8) NULL, @PS_Costheader VARCHAR (10) NULL, @PS_Costcentre VARCHAR (10) NULL, @PS_Detail VARCHAR (240) NULL, @PS_Landed_Cost_Line TINYINT NULL, @PS_Archive_Flag TINYINT NULL, @PS_Do_Not_Batch TINYINT NULL OUTPUT, @PS_Update_Cost_Price TINYINT NULL, @PS_Use_Currency_Price TINYINT NULL, @PS_Ignore_Quantity_Check TINYINT NULL, @PS_Update_Landed_Cost TINYINT NULL, @PS_Transaction_Link INT NULL OUTPUT, @PS_Lot_Number VARCHAR (20) NULL, @PS_Renew_Date DATETIME NULL, @PS_Serial_Sort VARCHAR (20) NULL, @PS_Serial_Date1 DATETIME NULL, @PS_Serial_Date2 DATETIME NULL, @PS_Serial_Date3 DATETIME NULL, @PS_Serial_Notes VARCHAR (240) NULL, @PS_Account_Ref VARCHAR (10) NULL, @PS_Order_Ref VARCHAR (10) NULL, @PS_Source VARCHAR (1) NULL, @PS_Analysis VARCHAR (25) NULL, @PS_Do_Not_Update_Nominal BIT NULL, @PS_Origin VARCHAR (3) NULL, @PS_User_Char1 VARCHAR (20) NULL, @PS_User_Char2 VARCHAR (20) NULL, @PS_User_Char3 VARCHAR (100) NULL, @PS_User_Char4 VARCHAR (100) NULL, @PS_User_Flag1 TINYINT NULL, @PS_User_Flag2 TINYINT NULL, @PS_User_Date1 DATETIME NULL, @PS_User_Date2 DATETIME NULL, @PS_User_Number1 DECIMAL (24, 8) NULL, @PS_User_Number2 DECIMAL (24, 8) NULL, @PS_Serial_Temp_ID INT NULL, @PS_ExcludefromSop BIT NULL, @PS_Select_First_Sub_Analysis BIT NULL, @PS_Select_First_Serial_No BIT NULL, @PS_DoNotPost BIT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


