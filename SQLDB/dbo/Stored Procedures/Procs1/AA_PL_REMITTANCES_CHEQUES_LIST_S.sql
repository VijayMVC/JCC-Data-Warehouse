﻿CREATE PROCEDURE [dbo].[AA_PL_REMITTANCES_CHEQUES_LIST_S]
@PS_UserID NVARCHAR (4) NULL, @PS_MaxRecords INT NULL, @PS_CalledFrom INT NULL, @PS_StartValue SQL_VARIANT NULL, @PS_StartPrimary INT NULL, @PS_OrderByDescending TINYINT NULL, @PS_OrderByFieldName [sysname] NULL, @PS_TotalRecordCount INT NULL OUTPUT, @PS_AdvancedResponse TINYINT NULL, @PS_ErrorInstanceID BIGINT NULL OUTPUT, @PS_ErrorHandlingMethod INT NULL, @PS_OutputMode TINYINT NULL, @PS_GetMinPrimary BIT NULL, @PS_MinPrimaryValue INT NULL OUTPUT, @PS_Source VARCHAR (1) NULL, @PS_PrimaryFrom INT NULL, @PS_PrimarySearch TINYINT NULL, @PS_PrimaryTo INT NULL, @PS_AccountCodeFrom NVARCHAR (10) NULL, @PS_AccountCodeSearch TINYINT NULL, @PS_AccountCodeTo NVARCHAR (10) NULL, @PS_TransactionDateFrom DATETIME NULL, @PS_TransactionDateSearch TINYINT NULL, @PS_TransactionDateTo DATETIME NULL, @PS_DueDateFrom DATETIME NULL, @PS_DueDateSearch TINYINT NULL, @PS_DueDateTo DATETIME NULL, @PS_SettlementDateFrom DATETIME NULL, @PS_SettlementDateSearch TINYINT NULL, @PS_SettlementDateTo DATETIME NULL, @PS_CurrencySymbol NVARCHAR (4) NULL, @PS_ListReference NVARCHAR (10) NULL, @PS_SortKeyFrom NVARCHAR (20) NULL, @PS_SortKeySearch TINYINT NULL, @PS_SortKeyTo NVARCHAR (20) NULL, @PS_UserSort1From NVARCHAR (20) NULL, @PS_UserSort1Search TINYINT NULL, @PS_UserSort1To NVARCHAR (20) NULL, @PS_UserSort2From NVARCHAR (20) NULL, @PS_UserSort2Search TINYINT NULL, @PS_UserSort2To NVARCHAR (20) NULL, @PS_UserSort3From NVARCHAR (20) NULL, @PS_UserSort3Search TINYINT NULL, @PS_UserSort3To NVARCHAR (20) NULL, @PS_UserChar1From NVARCHAR (20) NULL, @PS_UserChar1Search TINYINT NULL, @PS_UserChar1To NVARCHAR (20) NULL, @PS_UserChar2From NVARCHAR (20) NULL, @PS_UserChar2Search TINYINT NULL, @PS_UserChar2To NVARCHAR (20) NULL, @PS_UserChar3From NVARCHAR (100) NULL, @PS_UserChar3Search TINYINT NULL, @PS_UserChar3To NVARCHAR (100) NULL, @PS_UserChar4From NVARCHAR (100) NULL, @PS_UserChar4Search TINYINT NULL, @PS_UserChar4To NVARCHAR (100) NULL, @PS_UserNum1From FLOAT (53) NULL, @PS_UserNum1Search TINYINT NULL, @PS_UserNum1To FLOAT (53) NULL, @PS_UserNum2From FLOAT (53) NULL, @PS_UserNum2Search TINYINT NULL, @PS_UserNum2To FLOAT (53) NULL, @PS_UserDate1From DATETIME NULL, @PS_UserDate1Search TINYINT NULL, @PS_UserDate1To DATETIME NULL, @PS_UserDate2From DATETIME NULL, @PS_UserDate2Search TINYINT NULL, @PS_UserDate2To DATETIME NULL, @PS_SubLedgerFrom NVARCHAR (10) NULL, @PS_SubLedgerSearch TINYINT NULL, @PS_SubLedgerTo NVARCHAR (10) NULL, @PS_IncludeFuturePeriodTrans BIT NULL, @PS_IncludeDisputedTrans BIT NULL, @PS_IncludeInvoices BIT NULL, @PS_IncludePayments BIT NULL, @PS_IncludeCreditNotes BIT NULL, @PS_IncludeDebitAdjustments BIT NULL, @PS_IncludeCreditAdjustments BIT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


