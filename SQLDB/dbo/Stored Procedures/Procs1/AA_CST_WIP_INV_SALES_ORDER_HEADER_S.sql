﻿CREATE PROCEDURE [dbo].[AA_CST_WIP_INV_SALES_ORDER_HEADER_S]
@PS_Default_String VARCHAR (20) NULL, @PS_Validate_Only BIT NULL, @PS_User_Id VARCHAR (4) NULL, @PS_CustomerCode VARCHAR (10) NULL, @PS_CustomerOrderRef VARCHAR (20) NULL, @PS_DefaultHeaderDesc VARCHAR (240) NULL, @PS_BatchRef VARCHAR (10) NULL, @PS_OrderDate DATETIME NULL, @PS_UserSort1 VARCHAR (20) NULL, @PS_UserSort2 VARCHAR (20) NULL, @PS_UserSort3 VARCHAR (20) NULL, @PS_HeaderRowCount BIGINT NULL, @PS_Source VARCHAR (1) NULL, @PS_Error_Count INT NULL OUTPUT, @PS_ErrorHandlingMethod TINYINT NULL, @PS_InstanceId BIGINT NULL OUTPUT, @PS_ObjectGuid UNIQUEIDENTIFIER NULL, @PS_Batch_GUID UNIQUEIDENTIFIER NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

