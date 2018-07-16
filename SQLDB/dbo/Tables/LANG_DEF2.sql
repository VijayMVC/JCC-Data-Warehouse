﻿CREATE TABLE [dbo].[LANG_DEF2] (
    [LANGCODE_DEF2]          VARCHAR (10) NOT NULL,
    [RECEIPT_REF]            VARCHAR (15) NULL,
    [REFERENCE]              VARCHAR (15) NULL,
    [INVOICE_NUMBER]         VARCHAR (15) NULL,
    [CREDIT_NUMBER]          VARCHAR (15) NULL,
    [DESCRIPTION]            VARCHAR (15) NULL,
    [VALUE]                  VARCHAR (10) NULL,
    [DETAIL]                 VARCHAR (10) NULL,
    [PURCH_ANALYSIS_CODE]    VARCHAR (10) NULL,
    [TAX]                    VARCHAR (5)  NULL,
    [CHEQUE]                 VARCHAR (8)  NULL,
    [REMITTANCE_BALANCE]     VARCHAR (20) NULL,
    [PAYMENT_DATE]           VARCHAR (14) NULL,
    [CHEQUE_NO]              VARCHAR (12) NULL,
    [JOURNAL_LINE_REF]       VARCHAR (25) NULL,
    [VOUCHER_REF]            VARCHAR (15) NULL,
    [CONTRA_ACCOUNT]         VARCHAR (15) NULL,
    [EC_INFO]                VARCHAR (8)  NULL,
    [FIRST_POSTING_DATE]     VARCHAR (20) NULL,
    [NO_OF_POSTINGS]         VARCHAR (18) NULL,
    [POSTING_EVERY]          VARCHAR (15) NULL,
    [FIND_BATCH_JNLS_BY]     VARCHAR (25) NULL,
    [FIND_RECUR_JNLS_BY]     VARCHAR (28) NULL,
    [POSTING]                VARCHAR (8)  NULL,
    [BATCH_REF]              VARCHAR (12) NULL,
    [FIND_BATCH_BY]          VARCHAR (30) NULL,
    [HEADER_REF]             VARCHAR (12) NULL,
    [DATE_RANGE]             VARCHAR (16) NULL,
    [TO_TXT]                 VARCHAR (5)  NULL,
    [PERIOD_RANGE]           VARCHAR (20) NULL,
    [CURRENCY_TXT]           VARCHAR (10) NULL,
    [ANT_DATE]               VARCHAR (10) NULL,
    [TYPE]                   VARCHAR (6)  NULL,
    [RATE]                   VARCHAR (6)  NULL,
    [TOTAL_POST]             VARCHAR (20) NULL,
    [ALLOC_TRAN_FOR]         VARCHAR (30) NULL,
    [ALLOCATED_VALUE]        VARCHAR (20) NULL,
    [ALLOC_BALANCE]          VARCHAR (20) NULL,
    [OS_BALANCE]             VARCHAR (20) NULL,
    [CORRECTION_TEXT]        VARCHAR (12) NULL,
    [FIND_TRANS_BY]          VARCHAR (22) NULL,
    [DUE_BY]                 VARCHAR (10) NULL,
    [SETT_DATE]              VARCHAR (10) NULL,
    [PAYMENT_DETAIL]         VARCHAR (15) NULL,
    [BANK]                   VARCHAR (10) NULL,
    [DISCOUNT]               VARCHAR (10) NULL,
    [RECEIPT_DATE]           VARCHAR (15) NULL,
    [OUTSTANDING]            VARCHAR (15) NULL,
    [SETTTXT_DEF]            VARCHAR (6)  NULL,
    [RECEIPT_BAL]            VARCHAR (20) NULL,
    [TRAN_DATE]              VARCHAR (12) NULL,
    [UNALLOCCRED]            VARCHAR (25) NULL,
    [CORRECT_ALLOC]          VARCHAR (30) NULL,
    [DISPUTED]               VARCHAR (12) NULL,
    [CUSTOMER]               VARCHAR (10) NULL,
    [FROM_TEXT]              VARCHAR (5)  NULL,
    [SUPPLIER]               VARCHAR (10) NULL,
    [TOTAL_TO_EXPORT]        VARCHAR (18) NULL,
    [FIND_BACS_PAY_BY]       VARCHAR (22) NULL,
    [REMIT_DATE]             VARCHAR (12) NULL,
    [CHEQUE_DATE]            VARCHAR (12) NULL,
    [FIRST_CHEQUENO]         VARCHAR (18) NULL,
    [FIND_CHEQUES_BY]        VARCHAR (18) NULL,
    [DATE_ENTERED]           VARCHAR (15) NULL,
    [DO_NOTUP_DATE_DRL]      VARCHAR (15) NULL,
    [ARCHIVED_DRL]           VARCHAR (15) NULL,
    [NOTARCHIVED_DRL]        VARCHAR (15) NULL,
    [DISPUTED_DRL]           VARCHAR (14) NULL,
    [NOTDISPUTED_DRL]        VARCHAR (14) NULL,
    [POSTED_SO_FAR]          VARCHAR (15) NULL,
    [FIRST_POSTED]           VARCHAR (14) NULL,
    [LAST_POSTED]            VARCHAR (14) NULL,
    [NEXT_POSTINGS]          VARCHAR (14) NULL,
    [COSTING_TXT]            VARCHAR (8)  NULL,
    [CONTRA_AC]              VARCHAR (12) NULL,
    [POSTING_DATE]           VARCHAR (15) NULL,
    [EC_STATE]               VARCHAR (10) NULL,
    [NON_EC_STATE]           VARCHAR (14) NULL,
    [ANTICIPATED]            VARCHAR (12) NULL,
    [TEL_ABBREV]             VARCHAR (5)  NULL,
    [CONT_ABBREV]            VARCHAR (7)  NULL,
    [SORT_ABBREV]            VARCHAR (5)  NULL,
    [BAL_ABBREV]             VARCHAR (5)  NULL,
    [TURNOVER_ABBREV]        VARCHAR (5)  NULL,
    [ACQ_TAX]                VARCHAR (10) NULL,
    [INTERNAL_REF]           VARCHAR (15) NULL,
    [PAYMENT_REF]            VARCHAR (15) NULL,
    [ANTICIPATED_RECEIPT]    VARCHAR (25) NULL,
    [ANTICIPATED_PAYMENT]    VARCHAR (25) NULL,
    [DO_NOT_AMEND_DATE]      VARCHAR (20) NULL,
    [SET_TO_FIXED_DATE]      VARCHAR (20) NULL,
    [ADVANCE_BY]             VARCHAR (12) NULL,
    [SEARCH]                 VARCHAR (8)  NULL,
    [SALES_TRANSACTIONS]     VARCHAR (20) NULL,
    [PURCHASE_TRANSACTIONS]  VARCHAR (24) NULL,
    [SORT_LIST_BY]           VARCHAR (15) NULL,
    [TRANSACTION_DATE]       VARCHAR (18) NULL,
    [ANTICIPATED_DATE]       VARCHAR (18) NULL,
    [SORT_BY_ACCOUNT_CODE]   VARCHAR (22) NULL,
    [NEGATIVE_TEXT]          VARCHAR (10) NULL,
    [ANALYSIS_CODE]          VARCHAR (15) NULL,
    [CURRECNY_VALUE]         VARCHAR (15) NULL,
    [PRICE_CODE_TEXT]        VARCHAR (12) NULL,
    [SALES_RECEIPT]          VARCHAR (15) NULL,
    [SALES_PAYMENT]          VARCHAR (15) NULL,
    [PURCHASE_PAYMENT]       VARCHAR (18) NULL,
    [PURCHASE_RECEIPT]       VARCHAR (18) NULL,
    [ALLOCATION_EXCH_DIFF]   VARCHAR (32) NULL,
    [ALLOC_CORR_EXCH_DIFF]   VARCHAR (38) NULL,
    [TO_POST_TXT]            VARCHAR (10) NULL,
    [TO_SELECT_TEXT]         VARCHAR (12) NULL,
    [DONOTCOPY_LOCATION]     VARCHAR (90) NULL,
    [FAX_OPTIONS]            VARCHAR (15) NULL,
    [SET_LEFT_MARGIN]        VARCHAR (15) NULL,
    [FAX_FORMAT]             VARCHAR (15) NULL,
    [FAX_A4]                 VARCHAR (15) NULL,
    [FAX_USLETTER]           VARCHAR (15) NULL,
    [USE_MAIL_ORDER]         VARCHAR (25) NULL,
    [POSTINGS_PER_PERIOD]    VARCHAR (25) NULL,
    [PAYMENT_PROMISED_DATE]  VARCHAR (25) NULL,
    [PAYMENT_VALUE_PROMISED] VARCHAR (25) NULL,
    CONSTRAINT [LANGCODE_DEF2_PK] PRIMARY KEY CLUSTERED ([LANGCODE_DEF2] ASC)
);
