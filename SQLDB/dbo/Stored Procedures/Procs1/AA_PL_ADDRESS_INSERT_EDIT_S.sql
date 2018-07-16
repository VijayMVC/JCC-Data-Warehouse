﻿CREATE PROCEDURE [dbo].[AA_PL_ADDRESS_INSERT_EDIT_S]
@PS_Default_String VARCHAR (55) NULL, @PS_Account_Code VARCHAR (10) NULL, @PS_Address_Number INT NULL OUTPUT, @PS_Address VARCHAR (160) NULL, @PS_Definable_Address_1 VARCHAR (40) NULL, @PS_Definable_Address_2 VARCHAR (40) NULL, @PS_Postcode VARCHAR (12) NULL, @PS_Phone VARCHAR (20) NULL, @PS_Fax VARCHAR (20) NULL, @PS_Contact VARCHAR (30) NULL, @PS_Contact_Title VARCHAR (5) NULL, @PS_Contact_Initials VARCHAR (15) NULL, @PS_Contact_Surname VARCHAR (30) NULL, @PS_Contact_Salute VARCHAR (20) NULL, @PS_Contact_Job VARCHAR (35) NULL, @PS_Def_Invoice_Address TINYINT NULL, @PS_Def_Delivery_Address TINYINT NULL, @PS_Def_Statement_Address TINYINT NULL, @PS_Def_Remittance_Address TINYINT NULL, @PS_Delivery_Address TINYINT NULL, @PS_Source VARCHAR (1) NULL, @PS_User_Id VARCHAR (4) NULL, @PS_Analysis VARCHAR (25) NULL, @PS_Replace_Notes VARCHAR (240) NULL, @PS_Append_Notes VARCHAR (240) NULL, @PS_Email_Address VARCHAR (64) NULL, @PS_CC_Email VARCHAR (64) NULL, @PS_Country VARCHAR (35) NULL, @PS_Contact_FName VARCHAR (20) NULL, @PS_User_Char1 VARCHAR (20) NULL, @PS_User_Char2 VARCHAR (20) NULL, @PS_User_Char3 VARCHAR (20) NULL, @PS_User_Char4 VARCHAR (30) NULL, @PS_User_Char5 VARCHAR (30) NULL, @PS_User_Char6 VARCHAR (30) NULL, @PS_User_Date1 DATETIME NULL, @PS_User_Date2 DATETIME NULL, @PS_User_Date3 DATETIME NULL, @PS_User_Flag1 TINYINT NULL, @PS_User_Flag2 TINYINT NULL, @PS_User_Flag3 TINYINT NULL, @PS_User_Number1 DECIMAL (24, 8) NULL, @PS_User_Number2 DECIMAL (24, 8) NULL, @PS_User_Number3 DECIMAL (24, 8) NULL, @PS_Do_Not_Use TINYINT NULL, @PS_ErrorHandlingMethod TINYINT NULL, @PS_InstanceID BIGINT NULL OUTPUT, @PS_ObjectGuid UNIQUEIDENTIFIER NULL, @PS_Address_Primary INT NULL OUTPUT, @PS_Mobile_Number VARCHAR (20) NULL, @PS_LastSaveDateTime DATETIME NULL, @PS_ApplyConcurrencyCheck BIT NULL, @PS_ConcurrentUser VARCHAR (4) NULL OUTPUT, @PS_User_LongChar1 VARCHAR (100) NULL, @PS_User_LongChar2 VARCHAR (100) NULL, @PS_Validate_Only BIT NULL, @PS_TestExistsByPostcodeAndFirstLine BIT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

