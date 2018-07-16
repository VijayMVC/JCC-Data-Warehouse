﻿CREATE PROCEDURE [dbo].[AA_EDIT_SL_ADDRESS_S]
@PS_Default_String VARCHAR (150) NULL, @PS_Account_Code VARCHAR (10) NULL, @PS_Address_Number INT NULL OUTPUT, @PS_Address VARCHAR (160) NULL, @PS_Definable_Address_1 VARCHAR (40) NULL, @PS_Definable_Address_2 VARCHAR (40) NULL, @PS_Postcode VARCHAR (12) NULL, @PS_Contact VARCHAR (30) NULL, @PS_Phone VARCHAR (20) NULL, @PS_Fax VARCHAR (20) NULL, @PS_Email_Address VARCHAR (64) NULL, @PS_Def_Invoice_Address TINYINT NULL, @PS_Def_Delivery_Address TINYINT NULL, @PS_Def_Statement_Address TINYINT NULL, @PS_Delivery_Address TINYINT NULL, @PS_Contact_Title VARCHAR (5) NULL, @PS_Contact_Initials VARCHAR (15) NULL, @PS_Contact_Surname VARCHAR (30) NULL, @PS_Contact_FName VARCHAR (20) NULL, @PS_Contact_Job VARCHAR (35) NULL, @PS_Suppress_Acct_Name TINYINT NULL, @PS_User_ID VARCHAR (4) NULL, @PS_Source VARCHAR (1) NULL, @PS_Contact_Salute VARCHAR (20) NULL, @PS_Contact_Extension VARCHAR (20) NULL, @PS_Contact_Home_Number VARCHAR (20) NULL, @PS_Mobile_Number VARCHAR (20) NULL, @PS_User_Date_1 DATETIME NULL, @PS_User_Date_2 DATETIME NULL, @PS_User_Date_3 DATETIME NULL, @PS_User_Number_1 FLOAT (53) NULL, @PS_User_Number_2 FLOAT (53) NULL, @PS_User_Number_3 FLOAT (53) NULL, @PS_User_Text_1 VARCHAR (20) NULL, @PS_User_Text_2 VARCHAR (20) NULL, @PS_User_Text_3 VARCHAR (20) NULL, @PS_User_Text_4 VARCHAR (20) NULL, @PS_User_Text_5 VARCHAR (MAX) NULL, @PS_User_Text_6 VARCHAR (MAX) NULL, @PS_User_Text_7 VARCHAR (20) NULL, @PS_User_Text_8 VARCHAR (20) NULL, @PS_User_Text_9 VARCHAR (20) NULL, @PS_User_Text_10 VARCHAR (20) NULL, @PS_User_Flag_1 TINYINT NULL, @PS_User_Flag_2 TINYINT NULL, @PS_User_Flag_3 TINYINT NULL, @PS_User_Flag_4 TINYINT NULL, @PS_Allocated_User VARCHAR (4) NULL, @PS_Recall_Time DATETIME NULL, @PS_Replace_Notes TEXT NULL, @PS_Append_Notes TEXT NULL, @PS_Level INT NULL, @PS_Analysis VARCHAR (25) NULL, @PS_CC_Email VARCHAR (64) NULL, @PS_Country VARCHAR (35) NULL, @PS_User_Char1 VARCHAR (20) NULL, @PS_User_Char2 VARCHAR (20) NULL, @PS_User_Char3 VARCHAR (20) NULL, @PS_User_Char4 VARCHAR (30) NULL, @PS_User_Char5 VARCHAR (30) NULL, @PS_User_Char6 VARCHAR (30) NULL, @PS_User_Date1 DATETIME NULL, @PS_User_Date2 DATETIME NULL, @PS_User_Date3 DATETIME NULL, @PS_User_Flag1 TINYINT NULL, @PS_User_Flag2 TINYINT NULL, @PS_User_Flag3 TINYINT NULL, @PS_User_Number1 DECIMAL (24, 8) NULL, @PS_User_Number2 DECIMAL (24, 8) NULL, @PS_User_Number3 DECIMAL (24, 8) NULL, @PS_Do_Not_Use TINYINT NULL, @PS_ErrorHandlingMethod TINYINT NULL, @PS_InstanceID BIGINT NULL OUTPUT, @PS_ObjectGuid UNIQUEIDENTIFIER NULL, @PS_Address_Primary INT NULL OUTPUT, @PS_Country_Code VARCHAR (4) NULL, @PS_Export_Code VARCHAR (2) NULL, @PS_Branch_ID VARCHAR (3) NULL, @PS_Vat_Reg_No VARCHAR (21) NULL, @PS_EC_Delivery VARCHAR (3) NULL, @PS_EC_T_Nature VARCHAR (2) NULL, @PS_EC_T_Mode VARCHAR (2) NULL, @PS_LastSaveDateTime DATETIME NULL, @PS_ApplyConcurrencyCheck BIT NULL, @PS_ConcurrentUser VARCHAR (4) NULL OUTPUT, @PS_User_Char_Long1 VARCHAR (100) NULL, @PS_User_Char_Long2 VARCHAR (100) NULL, @PS_Do_Not_Email BIT NULL, @PS_Date_Allocated DATETIME NULL, @PS_USRCHAR1 VARCHAR (20) NULL, @PS_USRCHAR2 VARCHAR (20) NULL, @PS_USRCHAR3 VARCHAR (20) NULL, @PS_USRCHAR4 VARCHAR (20) NULL, @PS_USRCHAR5 VARCHAR (100) NULL, @PS_USRCHAR6 VARCHAR (100) NULL, @PS_USRCHAR7 VARCHAR (100) NULL, @PS_USRCHAR8 VARCHAR (100) NULL, @PS_USRCHAR9 VARCHAR (20) NULL, @PS_USRCHAR10 VARCHAR (20) NULL, @PS_USRCHAR11 VARCHAR (20) NULL, @PS_USRCHAR12 VARCHAR (20) NULL, @PS_USRDATE1 DATETIME NULL, @PS_USRDATE2 DATETIME NULL, @PS_USRDATE3 DATETIME NULL, @PS_USRDATE4 DATETIME NULL, @PS_USRDATE5 DATETIME NULL, @PS_USRDATE6 DATETIME NULL, @PS_USRDATE7 DATETIME NULL, @PS_USRDATE8 DATETIME NULL, @PS_USRDATE9 DATETIME NULL, @PS_USRNUM1 FLOAT (53) NULL, @PS_USRNUM2 FLOAT (53) NULL, @PS_USRNUM3 FLOAT (53) NULL, @PS_USRNUM4 FLOAT (53) NULL, @PS_USRNUM5 FLOAT (53) NULL, @PS_USRFLAG1 TINYINT NULL, @PS_USRFLAG2 TINYINT NULL, @PS_USRFLAG3 TINYINT NULL, @PS_USRFLAG4 TINYINT NULL, @PS_USRFLAG5 TINYINT NULL, @PS_USRTIME1 DATETIME NULL, @PS_KeyWord_XML_List NTEXT NULL, @PS_Validate_Only BIT NULL, @PS_Insert_If_Not_Found BIT NULL, @PS_DateStampNotesIfChanged BIT NULL, @PS_DeliveryRoute VARCHAR (20) NULL, @PS_TestExistsByPostcodeAndFirstLine BIT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

