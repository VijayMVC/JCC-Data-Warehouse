﻿CREATE PROCEDURE [dbo].[AA_SYS_VALIDATE_CURRENCY_DEFAULT_S]
@PS_Symbol NVARCHAR (4) NULL, @PS_ExistingSymbol NVARCHAR (4) NULL, @PS_CodeType NVARCHAR (20) NULL, @PS_CodeDesc NVARCHAR (100) NULL, @PS_RecordType NVARCHAR (1) NULL, @PS_Mode NVARCHAR (1) NULL, @PS_DefaultString NVARCHAR (100) NULL, @PS_DefaultStringCodeCharPos TINYINT NULL, @PS_SuppliedCode NVARCHAR (25) NULL, @PS_ExistingCode NVARCHAR (25) NULL, @PS_DefaultCode NVARCHAR (25) NULL, @PS_DefaultStringNameCharPos TINYINT NULL, @PS_SuppliedName NVARCHAR (40) NULL, @PS_DefaultName NVARCHAR (40) NULL, @PS_CanMatchHome BIT NULL, @PS_CanBeEmpty BIT NULL, @PS_Code NVARCHAR (25) NULL OUTPUT, @PS_CodeName NVARCHAR (40) NULL OUTPUT, @PS_Error_Id NVARCHAR (10) NULL OUTPUT, @PS_ParamValue0 NVARCHAR (100) NULL OUTPUT, @PS_ParamValue1 NVARCHAR (100) NULL OUTPUT
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


