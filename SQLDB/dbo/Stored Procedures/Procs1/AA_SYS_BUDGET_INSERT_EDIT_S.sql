﻿CREATE PROCEDURE [dbo].[AA_SYS_BUDGET_INSERT_EDIT_S]
@PS_DefaultString VARCHAR (100) NULL, @PS_ValidateOnly BIT NULL, @PS_UserId VARCHAR (4) NULL, @PS_RecordType VARCHAR (2) NULL, @PS_BudgetType VARCHAR (1) NULL, @PS_MainCode VARCHAR (25) NULL, @PS_CostCentreCode VARCHAR (25) NULL, @PS_Primary INT NULL, @PS_BudgetYear VARCHAR (7) NULL, @PS_BudgetPeriod TINYINT NULL, @PS_BudgetRevision SMALLINT NULL, @PS_BudgetValue DECIMAL (24, 8) NULL, @PS_Source VARCHAR (1) NULL, @PS_DateEntered DATETIME NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


