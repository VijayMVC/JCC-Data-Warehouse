﻿CREATE PROCEDURE [dbo].[AA_CST_PROJECT_TRANSACTION_LIST_S]
@PS_UserID NVARCHAR (4) NULL, @PS_MaxRecords INT NULL, @PS_CalledFrom INT NULL, @PS_StartValue SQL_VARIANT NULL, @PS_StartPrimary INT NULL, @PS_OrderByDescending TINYINT NULL, @PS_OrderByFieldName [sysname] NULL, @PS_TotalRecordCount INT NULL OUTPUT, @PS_AdvancedResponse TINYINT NULL, @PS_ErrorInstanceID BIGINT NULL OUTPUT, @PS_ErrorHandlingMethod INT NULL, @PS_OutputMode TINYINT NULL, @PS_GetMinPrimary BIT NULL, @PS_MinPrimaryValue INT NULL OUTPUT, @PS_SQLOnly BIT NULL, @PS_SQLStatement NVARCHAR (4000) NULL OUTPUT, @PS_PrimaryFrom INT NULL, @PS_PrimarySearch TINYINT NULL, @PS_PrimaryTo INT NULL, @PS_ProjectCodeFrom NVARCHAR (10) NULL, @PS_ProjectCodeSearch TINYINT NULL, @PS_ProjectCodeTo NVARCHAR (10) NULL, @PS_CostCentreCodeFrom NVARCHAR (10) NULL, @PS_CostCentreCodeSearch TINYINT NULL, @PS_CostCentreCodeTo NVARCHAR (10) NULL, @PS_ResourceCodeFrom NVARCHAR (16) NULL, @PS_ResourceCodeSearch TINYINT NULL, @PS_ResourceCodeTo NVARCHAR (16) NULL, @PS_OrderAccountCodeFrom NVARCHAR (16) NULL, @PS_OrderAccountCodeSearch TINYINT NULL, @PS_OrderAccountCodeTo NVARCHAR (16) NULL, @PS_InvoiceAccountCodeFrom NVARCHAR (16) NULL, @PS_InvoiceAccountCodeSearch TINYINT NULL, @PS_InvoiceAccountCodeTo NVARCHAR (16) NULL, @PS_DeadlineDateFrom DATETIME NULL, @PS_DeadlineDateSearch TINYINT NULL, @PS_DeadlineDateTo DATETIME NULL, @PS_YearPeriodFrom NVARCHAR (3) NULL, @PS_YearPeriodSearch TINYINT NULL, @PS_YearPeriodTo NVARCHAR (3) NULL, @PS_YearWeekFrom NVARCHAR (3) NULL, @PS_YearWeekSearch TINYINT NULL, @PS_YearWeekTo NVARCHAR (3) NULL, @PS_ProjectDate1From DATETIME NULL, @PS_ProjectDate1Search TINYINT NULL, @PS_ProjectDate1To DATETIME NULL, @PS_ProjectDate2From DATETIME NULL, @PS_ProjectDate2Search TINYINT NULL, @PS_ProjectDate2To DATETIME NULL, @PS_ProjectDate3From DATETIME NULL, @PS_ProjectDate3Search TINYINT NULL, @PS_ProjectDate3To DATETIME NULL, @PS_SortKeyFrom NVARCHAR (20) NULL, @PS_SortKeySearch TINYINT NULL, @PS_SortKeyTo NVARCHAR (20) NULL, @PS_UserSort1From NVARCHAR (20) NULL, @PS_UserSort1Search TINYINT NULL, @PS_UserSort1To NVARCHAR (20) NULL, @PS_UserSort2From NVARCHAR (20) NULL, @PS_UserSort2Search TINYINT NULL, @PS_UserSort2To NVARCHAR (20) NULL, @PS_UserSort3From NVARCHAR (20) NULL, @PS_UserSort3Search TINYINT NULL, @PS_UserSort3To NVARCHAR (20) NULL, @PS_UserSort4From NVARCHAR (20) NULL, @PS_UserSort4Search TINYINT NULL, @PS_UserSort4To NVARCHAR (20) NULL, @PS_UserSort5From NVARCHAR (20) NULL, @PS_UserSort5Search TINYINT NULL, @PS_UserSort5To NVARCHAR (20) NULL, @PS_UserSort6From NVARCHAR (20) NULL, @PS_UserSort6Search TINYINT NULL, @PS_UserSort6To NVARCHAR (20) NULL, @PS_IncludeTimesheetType TINYINT NULL, @PS_IncludeCostType TINYINT NULL, @PS_IncludePayments TINYINT NULL, @PS_IncludeFromSalesLedger TINYINT NULL, @PS_IncludeFromPurchaseLedger TINYINT NULL, @PS_IncludeFromNominalLedger TINYINT NULL, @PS_IncludeFromStockControl TINYINT NULL, @PS_IncludeActual TINYINT NULL, @PS_IncludeEstimate TINYINT NULL, @PS_IncludeSales TINYINT NULL, @PS_IncludeCosts TINYINT NULL, @PS_IncludeBatchedCosting TINYINT NULL, @PS_IncludePosted TINYINT NULL, @PS_IncludeEstimateStatus TINYINT NULL, @PS_IncludeActiveStatus TINYINT NULL, @PS_IncludeReopenedStatus TINYINT NULL, @PS_IncludeCompletedStatus TINYINT NULL, @PS_IncludeSuspendedStatus TINYINT NULL, @PS_IncludeCancelledStatus TINYINT NULL, @PS_AuditOrderDetailFrom INT NULL, @PS_AuditOrderDetailSearch TINYINT NULL, @PS_AuditOrderDetailTo INT NULL, @PS_AuditCostingDetailFrom INT NULL, @PS_AuditCostingDetailSearch TINYINT NULL, @PS_AuditCostingDetailTo INT NULL, @PS_AuditTransactionDetailFrom INT NULL, @PS_AuditTransactionDetailSearch TINYINT NULL, @PS_AuditTransactionDetailTo INT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

