﻿CREATE PROCEDURE [dbo].[AA_WO_ROUTE_INSERT_EDIT_S]
@PS_DefaultString NVARCHAR (100) NULL, @PS_Mode NVARCHAR (1) NULL, @PS_ValidateOnly BIT NULL, @PS_UserId VARCHAR (4) NULL, @PS_Primary INT NULL OUTPUT, @PS_Code VARCHAR (10) NULL OUTPUT, @PS_Description NVARCHAR (40) NULL, @PS_Notes TEXT NULL, @PS_User_Char1 NVARCHAR (20) NULL, @PS_User_Char2 NVARCHAR (20) NULL, @PS_User_Char3 NVARCHAR (20) NULL, @PS_User_Char4 NVARCHAR (30) NULL, @PS_User_Char5 NVARCHAR (30) NULL, @PS_User_Char6 NVARCHAR (30) NULL, @PS_User_Date1 DATETIME NULL, @PS_User_Date2 DATETIME NULL, @PS_User_Date3 DATETIME NULL, @PS_User_Flag1 TINYINT NULL, @PS_User_Flag2 TINYINT NULL, @PS_User_Flag3 TINYINT NULL, @PS_User_Number1 DECIMAL (24, 8) NULL, @PS_User_Number2 DECIMAL (24, 8) NULL, @PS_User_Number3 DECIMAL (24, 8) NULL, @PS_DuplicatePrimary INT NULL, @PS_StageId INT NULL, @PS_User_LongChar1 NVARCHAR (100) NULL, @PS_User_LongChar2 NVARCHAR (100) NULL, @PS_Source NVARCHAR (1) NULL, @PS_ErrorHandlingMethod TINYINT NULL, @PS_InstanceID BIGINT NULL OUTPUT, @PS_ObjectGuid UNIQUEIDENTIFIER NULL, @PS_DefaultFlag TINYINT NULL, @PS_Do_Not_Use TINYINT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

