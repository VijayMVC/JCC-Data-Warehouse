﻿CREATE PROCEDURE [dbo].[AA_REP_SL_TRAN_DETAIL_POSTED_SEARCH_S]
@PS_UserID NVARCHAR (4) NULL, @PS_CalledFrom INT NULL, @PS_PrimarySortFieldName [sysname] NULL, @PS_PrimaryOrderByDesc BIT NULL, @PS_TotalRecordCount INT NULL OUTPUT, @PS_ErrorInstanceID BIGINT NULL OUTPUT, @PS_ErrorHandlingMethod INT NULL, @PS_OutputMode TINYINT NULL, @PS_ViewName [sysname] NULL, @PS_OrderByFieldName1 [sysname] NULL, @PS_OrderByDescending1 TINYINT NULL, @PS_OrderByFieldName2 [sysname] NULL, @PS_OrderByDescending2 TINYINT NULL, @PS_OrderByFieldName3 [sysname] NULL, @PS_OrderByDescending3 TINYINT NULL, @PS_OrderByFieldName4 [sysname] NULL, @PS_OrderByDescending4 TINYINT NULL, @PS_OrderByFieldName5 [sysname] NULL, @PS_OrderByDescending5 TINYINT NULL, @PS_OrderByFieldName6 [sysname] NULL, @PS_OrderByDescending6 TINYINT NULL, @PS_OrderByFieldName7 [sysname] NULL, @PS_OrderByDescending7 TINYINT NULL, @PS_OrderByFieldName8 [sysname] NULL, @PS_OrderByDescending8 TINYINT NULL, @PS_OrderByFieldName9 [sysname] NULL, @PS_OrderByDescending9 TINYINT NULL, @PS_AccountCodeFrom NVARCHAR (10) NULL, @PS_AccountCodeSearch TINYINT NULL, @PS_AccountCodeTo NVARCHAR (10) NULL, @PS_TransactionDateFrom DATETIME NULL, @PS_TransactionDateSearch TINYINT NULL, @PS_TransactionDateTo DATETIME NULL, @PS_YearPeriodFrom NVARCHAR (3) NULL, @PS_YearPeriodSearch TINYINT NULL, @PS_YearPeriodTo NVARCHAR (3) NULL, @PS_YearFrom NCHAR (1) NULL, @PS_YearSearch TINYINT NULL, @PS_YearTo NCHAR (1) NULL, @PS_PeriodFrom TINYINT NULL, @PS_PeriodSearch TINYINT NULL, @PS_PeriodTo TINYINT NULL, @PS_HeaderReferenceFrom NVARCHAR (10) NULL, @PS_HeaderReferenceSearch TINYINT NULL, @PS_HeaderReferenceTo NVARCHAR (10) NULL, @PS_HomeGrossFrom FLOAT (53) NULL, @PS_HomeGrossSearch TINYINT NULL, @PS_HomeGrossTo FLOAT (53) NULL, @PS_HeaderPrimaryFrom INT NULL, @PS_HeaderPrimarySearch TINYINT NULL, @PS_HeaderPrimaryTo INT NULL, @PS_DetailPrimaryFrom INT NULL, @PS_DetailPrimarySearch TINYINT NULL, @PS_DetailPrimaryTo INT NULL, @PS_IncludeDisputed BIT NULL, @PS_IncludeUnDisputed BIT NULL, @PS_IncludeDoNotChase BIT NULL, @PS_IncludeChase BIT NULL, @PS_SortKeyFrom NVARCHAR (20) NULL, @PS_SortKeySearch TINYINT NULL, @PS_SortKeyTo NVARCHAR (20) NULL, @PS_UserSort1From NVARCHAR (20) NULL, @PS_UserSort1Search TINYINT NULL, @PS_UserSort1To NVARCHAR (20) NULL, @PS_UserSort2From NVARCHAR (20) NULL, @PS_UserSort2Search TINYINT NULL, @PS_UserSort2To NVARCHAR (20) NULL, @PS_UserSort3From NVARCHAR (20) NULL, @PS_UserSort3Search TINYINT NULL, @PS_UserSort3To NVARCHAR (20) NULL, @PS_AnalysisCodeFrom NVARCHAR (25) NULL, @PS_AnalysisCodeSearch TINYINT NULL, @PS_AnalysisCodeTo NVARCHAR (25) NULL, @PS_CurrencyCodeFrom NVARCHAR (4) NULL, @PS_CurrencyCodeSearch TINYINT NULL, @PS_CurrencyCodeTo NVARCHAR (4) NULL, @PS_IncludeInvoices BIT NULL, @PS_IncludeCreditNotes BIT NULL, @PS_IncludeReceipts BIT NULL, @PS_IncludeAdjustDR BIT NULL, @PS_IncludeAdjustCR BIT NULL, @PS_TranUserKey1From NVARCHAR (20) NULL, @PS_TranUserKey1Search TINYINT NULL, @PS_TranUserKey1To NVARCHAR (20) NULL, @PS_TranUserKey2From NVARCHAR (20) NULL, @PS_TranUserKey2Search TINYINT NULL, @PS_TranUserKey2To NVARCHAR (20) NULL, @PS_TranUserKey3From NVARCHAR (20) NULL, @PS_TranUserKey3Search TINYINT NULL, @PS_TranUserKey3To NVARCHAR (20) NULL, @PS_SubLedgerFrom NVARCHAR (10) NULL, @PS_SubLedgerSearch TINYINT NULL, @PS_SubLedgerTo NVARCHAR (10) NULL, @PS_IncludeBatchedTrans BIT NULL, @PS_IncludePostedTrans BIT NULL, @PS_IncludeCurrentPeriod BIT NULL, @PS_IncludeNonCurrentPeriod BIT NULL, @PS_IncludeAllBatchCurPeriod BIT NULL, @PS_IncludeAllNonBatchCurPeriod BIT NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


