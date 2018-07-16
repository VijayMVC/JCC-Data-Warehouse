﻿CREATE PROCEDURE [dbo].[AA_PL_AGED_CREDIT_HEADER_LIST_S]
@PS_UserID NVARCHAR (4) NULL, @PS_MaxRecords INT NULL, @PS_CalledFrom INT NULL, @PS_StartValue SQL_VARIANT NULL, @PS_StartPrimary INT NULL, @PS_OrderByDescending TINYINT NULL, @PS_OrderByFieldName [sysname] NULL, @PS_TotalRecordCount INT NULL OUTPUT, @PS_AdvancedResponse TINYINT NULL, @PS_ErrorInstanceID BIGINT NULL OUTPUT, @PS_ErrorHandlingMethod INT NULL, @PS_CountOnly TINYINT NULL, @PS_GetMinPrimary BIT NULL, @PS_MinPrimaryValue INT NULL OUTPUT, @PS_SQLOnly BIT NULL, @PS_SQLStatement NVARCHAR (4000) NULL OUTPUT, @PS_CreatedDateFrom DATETIME NULL, @PS_CreatedDateSearch TINYINT NULL, @PS_CreatedDateTo DATETIME NULL, @PS_ModifiedDateFrom DATETIME NULL, @PS_ModifiedDateSearch TINYINT NULL, @PS_ModifiedDateTo DATETIME NULL, @PS_InvAccountCodeFrom NVARCHAR (10) NULL, @PS_InvAccountCodeSearch TINYINT NULL, @PS_InvAccountCodeTo NVARCHAR (10) NULL, @PS_InvAccountNameFrom NVARCHAR (40) NULL, @PS_InvAccountNameSearch TINYINT NULL, @PS_InvAccountNameTo NVARCHAR (40) NULL, @PS_OrdAccountCodeFrom NVARCHAR (10) NULL, @PS_OrdAccountCodeSearch TINYINT NULL, @PS_OrdAccountCodeTo NVARCHAR (10) NULL, @PS_HeaderReferenceFrom NVARCHAR (10) NULL, @PS_HeaderReferenceSearch TINYINT NULL, @PS_HeaderReferenceTo NVARCHAR (10) NULL, @PS_HeaderAuditNoFrom INT NULL, @PS_HeaderAuditNoSearch TINYINT NULL, @PS_HeaderAuditNoTo INT NULL, @PS_TransactionDateFrom DATETIME NULL, @PS_TransactionDateSearch TINYINT NULL, @PS_TransactionDateTo DATETIME NULL, @PS_IncludeInvoice TINYINT NULL, @PS_IncludeCreditNote TINYINT NULL, @PS_IncludePayment TINYINT NULL, @PS_IncludeAdjustDR TINYINT NULL, @PS_IncludeAdjustCR TINYINT NULL, @PS_IncludeDisputed TINYINT NULL, @PS_InternalRefFrom INT NULL, @PS_InternalRefSearch TINYINT NULL, @PS_InternalRefTo INT NULL, @PS_YearPeriodFrom NVARCHAR (3) NULL, @PS_YearPeriodSearch TINYINT NULL, @PS_YearPeriodTo NVARCHAR (3) NULL, @PS_YearFrom NCHAR (1) NULL, @PS_YearSearch TINYINT NULL, @PS_YearTo NCHAR (1) NULL, @PS_PeriodFrom TINYINT NULL, @PS_PeriodSearch TINYINT NULL, @PS_PeriodTo TINYINT NULL, @PS_CurrencyFrom NVARCHAR (4) NULL, @PS_CurrencySearch TINYINT NULL, @PS_CurrencyTo NVARCHAR (4) NULL, @PS_NetFrom DECIMAL (24, 8) NULL, @PS_NetSearch TINYINT NULL, @PS_NetTo DECIMAL (24, 8) NULL, @PS_CurrencyNetFrom DECIMAL (24, 8) NULL, @PS_CurrencyNetSearch TINYINT NULL, @PS_CurrencyNetTo DECIMAL (24, 8) NULL, @PS_HeaderDescFrom NVARCHAR (30) NULL, @PS_HeaderDescSearch TINYINT NULL, @PS_HeaderDescTo NVARCHAR (30) NULL, @PS_SortKeyFrom NVARCHAR (20) NULL, @PS_SortKeySearch TINYINT NULL, @PS_SortKeyTo NVARCHAR (20) NULL, @PS_SuppUserSort1From NVARCHAR (20) NULL, @PS_SuppUserSort1Search TINYINT NULL, @PS_SuppUserSort1To NVARCHAR (20) NULL, @PS_SuppUserSort2From NVARCHAR (20) NULL, @PS_SuppUserSort2Search TINYINT NULL, @PS_SuppUserSort2To NVARCHAR (20) NULL, @PS_SuppUserSort3From NVARCHAR (20) NULL, @PS_SuppUserSort3Search TINYINT NULL, @PS_SuppUserSort3To NVARCHAR (20) NULL, @PS_TranUserKey1From NVARCHAR (20) NULL, @PS_TranUserKey1Search TINYINT NULL, @PS_TranUserKey1To NVARCHAR (20) NULL, @PS_TranUserKey2From NVARCHAR (20) NULL, @PS_TranUserKey2Search TINYINT NULL, @PS_TranUserKey2To NVARCHAR (20) NULL, @PS_TranUserKey3From NVARCHAR (20) NULL, @PS_TranUserKey3Search TINYINT NULL, @PS_TranUserKey3To NVARCHAR (20) NULL, @PS_AnalysisFrom NVARCHAR (25) NULL, @PS_AnalysisSearch TINYINT NULL, @PS_AnalysisTo NVARCHAR (25) NULL, @PS_StockCodeFrom NVARCHAR (25) NULL, @PS_StockCodeSearch TINYINT NULL, @PS_StockCodeTo NVARCHAR (25) NULL, @PS_PriceCodeFrom NVARCHAR (16) NULL, @PS_PriceCodeSearch TINYINT NULL, @PS_PriceCodeTo NVARCHAR (16) NULL, @PS_ProjectCodeFrom NVARCHAR (10) NULL, @PS_ProjectCodeSearch TINYINT NULL, @PS_ProjectCodeTo NVARCHAR (10) NULL, @PS_CostCentreCodeFrom NVARCHAR (10) NULL, @PS_CostCentreCodeSearch TINYINT NULL, @PS_CostCentreCodeTo NVARCHAR (10) NULL, @PS_StatementRefFrom NVARCHAR (10) NULL, @PS_StatementRefSearch TINYINT NULL, @PS_StatementRefTo NVARCHAR (10) NULL
WITH ENCRYPTION
AS
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END


