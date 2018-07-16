﻿CREATE TABLE [dbo].[LANG_DEF8] (
    [LANGCODE_DEF8]           VARCHAR (10)  NOT NULL,
    [SELECT_THE_OPTIONS]      VARCHAR (100) NULL,
    [COMPANY_NAME_TEXT]       VARCHAR (15)  NULL,
    [TELEX]                   VARCHAR (8)   NULL,
    [COMPANY_REG_NO]          VARCHAR (20)  NULL,
    [BANK_DETAIL]             VARCHAR (15)  NULL,
    [BRANCH_ID]               VARCHAR (12)  NULL,
    [COUNTRY_CODE]            VARCHAR (8)   NULL,
    [COUNTRY_NAME]            VARCHAR (8)   NULL,
    [TAX_NAME]                VARCHAR (10)  NULL,
    [COUNTRY_SYMBOL]          VARCHAR (10)  NULL,
    [TAX_REP_VAT_NO]          VARCHAR (18)  NULL,
    [BRANCH]                  VARCHAR (8)   NULL,
    [INTRASTAT_DEFAULTS]      VARCHAR (20)  NULL,
    [COUNTRY_TYPE]            VARCHAR (15)  NULL,
    [SET_UP_DEFAULTS]         VARCHAR (18)  NULL,
    [S_L_ANALYSIS]            VARCHAR (15)  NULL,
    [S_L_EXCH_DIFF]           VARCHAR (15)  NULL,
    [S_L_BANK]                VARCHAR (12)  NULL,
    [P_L_ANALYSIS]            VARCHAR (15)  NULL,
    [P_L_EXCH_DIFF]           VARCHAR (15)  NULL,
    [P_L_BANK]                VARCHAR (12)  NULL,
    [NOMINALS]                VARCHAR (10)  NULL,
    [ANALYSIS_DEFAULTS]       VARCHAR (20)  NULL,
    [ICON_TEXT]               VARCHAR (8)   NULL,
    [LEVEL_TEXT]              VARCHAR (8)   NULL,
    [BY_MONTH]                VARCHAR (10)  NULL,
    [BY_DAYS]                 VARCHAR (10)  NULL,
    [AUTOREP_NAME]            VARCHAR (8)   NULL,
    [CONFIRM_AFTER_EACH]      VARCHAR (28)  NULL,
    [PRINT_DETAILED_REPORTS]  VARCHAR (25)  NULL,
    [SALES_REPORTS]           VARCHAR (15)  NULL,
    [PURCHASE_REPORTS]        VARCHAR (18)  NULL,
    [NOMINAL_REPORTS]         VARCHAR (18)  NULL,
    [OPTION_TEXT]             VARCHAR (8)   NULL,
    [CHANGE_SORT]             VARCHAR (15)  NULL,
    [VOUCHERS]                VARCHAR (10)  NULL,
    [UPDATE_TEXT]             VARCHAR (8)   NULL,
    [DATAFILE_CREATED_ON]     VARCHAR (22)  NULL,
    [FIELD_LABELS]            VARCHAR (15)  NULL,
    [OS_ABBREV]               VARCHAR (5)   NULL,
    [NEEDED]                  VARCHAR (8)   NULL,
    [RUNNING_BAL]             VARCHAR (15)  NULL,
    [HEADER_NO]               VARCHAR (12)  NULL,
    [QTY_ORD]                 VARCHAR (10)  NULL,
    [QTY_DELVD]               VARCHAR (12)  NULL,
    [QTY_INVD]                VARCHAR (12)  NULL,
    [DELIVERED_DATE]          VARCHAR (18)  NULL,
    [INVOICED_DATE]           VARCHAR (15)  NULL,
    [ORDERS_FOUND]            VARCHAR (18)  NULL,
    [FIND_ORDERS_BY]          VARCHAR (18)  NULL,
    [ALLOCATION_DETAILS]      VARCHAR (20)  NULL,
    [ALLOW_FUTURE_POSTING]    VARCHAR (25)  NULL,
    [PERIODS_AHEAD]           VARCHAR (15)  NULL,
    [CURRENT_YEAR_ONLY]       VARCHAR (20)  NULL,
    [HOME_COUNTRY_TEXT]       VARCHAR (15)  NULL,
    [HOME_TAX_TEXT]           VARCHAR (10)  NULL,
    [HOME_CURRENCY_SYMBOL]    VARCHAR (22)  NULL,
    [CURRENCY_CODE]           VARCHAR (8)   NULL,
    [CURRENCY_SYMBOL]         VARCHAR (8)   NULL,
    [BUILD]                   VARCHAR (8)   NULL,
    [REVALUE_ACCOUNTS_FOR]    VARCHAR (22)  NULL,
    [REVALUE_USING]           VARCHAR (15)  NULL,
    [SELECT_OUTPUT]           VARCHAR (15)  NULL,
    [VOUCHER_DETAILS]         VARCHAR (18)  NULL,
    [CURRENT_EXCHANGE_RATE]   VARCHAR (25)  NULL,
    [EXCHANGE_RATE]           VARCHAR (15)  NULL,
    [CREATE_EXCHANGE_DIFF]    VARCHAR (38)  NULL,
    [BATCH_JOURNAL]           VARCHAR (15)  NULL,
    [TOTAL_RATE]              VARCHAR (12)  NULL,
    [DELIVERY_TIMES]          VARCHAR (18)  NULL,
    [CREDIT_SURCHARGE]        VARCHAR (18)  NULL,
    [IF_NOT_PAID_AFTER]       VARCHAR (20)  NULL,
    [FACTORING_MESSAGE]       VARCHAR (20)  NULL,
    [EXISTING_ORDER]          VARCHAR (18)  NULL,
    [SET_HEIGHT_POSITION]     VARCHAR (75)  NULL,
    [SCREEN_WIDTH]            VARCHAR (15)  NULL,
    [SCREEN_DEPTH]            VARCHAR (15)  NULL,
    [PIXELS]                  VARCHAR (8)   NULL,
    [ZERO_IS_DEFAULT]         VARCHAR (18)  NULL,
    [STAGGER_WINDOW_POS]      VARCHAR (28)  NULL,
    [STAGGER_POSITIONS_REQ]   VARCHAR (60)  NULL,
    [NOTE]                    VARCHAR (8)   NULL,
    [RESOURCE_NAMES]          VARCHAR (18)  NULL,
    [INCLUDE_UPLIFT_IN_TO]    VARCHAR (28)  NULL,
    [HIDE_WEEK_ON_ENTRY]      VARCHAR (32)  NULL,
    [LEVEL_1_NAME]            VARCHAR (15)  NULL,
    [ANALYSIS_HEADINGS]       VARCHAR (20)  NULL,
    [SUBTOTAL_HEADINGS]       VARCHAR (20)  NULL,
    [LEVEL_2_NAME]            VARCHAR (15)  NULL,
    [DEFAULT_ENTRY]           VARCHAR (15)  NULL,
    [DEFAULT_UPLIFT]          VARCHAR (18)  NULL,
    [USER_DATE_LABELS]        VARCHAR (18)  NULL,
    [CONTROL]                 VARCHAR (10)  NULL,
    [EX_DIFF]                 VARCHAR (12)  NULL,
    [PURCHASE_ANALYSIS_DEFS]  VARCHAR (30)  NULL,
    [PURCHASE_NOMINAL_DEFS]   VARCHAR (28)  NULL,
    [SALES_ANALYSIS_DEFS]     VARCHAR (25)  NULL,
    [SALES_NOMINAL_DEFS]      VARCHAR (25)  NULL,
    [OLDEST_ORDER_DATE]       VARCHAR (20)  NULL,
    [PRINT_BASED_ON_LIST]     VARCHAR (23)  NULL,
    [USER_EMAIL_DETAILS]      VARCHAR (20)  NULL,
    [BY_LOWER]                VARCHAR (5)   NULL,
    [WEEKS_TEXT]              VARCHAR (10)  NULL,
    [ADV_PRICE_MATRIX_TEXT]   VARCHAR (30)  NULL,
    [CONTRAS_TEXT]            VARCHAR (20)  NULL,
    [ACCRUALS_TEXT]           VARCHAR (20)  NULL,
    [ACCRUAL_TEXT]            VARCHAR (20)  NULL,
    [TOLERANCE_VAL_TEXT]      VARCHAR (20)  NULL,
    [TOLERANCE_P_TEXT]        VARCHAR (20)  NULL,
    [MULTIPLE_DUE_DATES_TEXT] VARCHAR (20)  NULL,
    [GO_TO_PROJECT_TEXT]      VARCHAR (20)  NULL,
    [VIEW_BUYING_PRICES_TEXT] VARCHAR (25)  NULL,
    [DATES_TEXT]              VARCHAR (15)  NULL,
    CONSTRAINT [LANGCODE_DEF8_PK] PRIMARY KEY CLUSTERED ([LANGCODE_DEF8] ASC) WITH (FILLFACTOR = 70)
);

