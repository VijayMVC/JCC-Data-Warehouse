﻿CREATE TABLE [dbo].[LANG_DEF4] (
    [LANGCODE_DEF4]                VARCHAR (10)  NOT NULL,
    [SALES_CONTROL]                VARCHAR (18)  NULL,
    [PURCHASE_CONTROL]             VARCHAR (18)  NULL,
    [PROFILED]                     VARCHAR (10)  NULL,
    [DO_NOT_AMEND_DAYS]            VARCHAR (18)  NULL,
    [SET_TO_FIXED_DAYS]            VARCHAR (26)  NULL,
    [CALCULATE_DAYS_TRAN]          VARCHAR (34)  NULL,
    [DATES_FROM]                   VARCHAR (12)  NULL,
    [ACCOUNT_CODE]                 VARCHAR (15)  NULL,
    [ON_STOP_STATUS]               VARCHAR (15)  NULL,
    [CLEAR_STATUS_SLCT]            VARCHAR (35)  NULL,
    [SET_STATUS_SELECT]            VARCHAR (35)  NULL,
    [COMPARE_BALANCE]              VARCHAR (32)  NULL,
    [CHECK_INVS_OVERDUE]           VARCHAR (32)  NULL,
    [ACCOUNTS_ON_STOP]             VARCHAR (18)  NULL,
    [ACCOUNTS_NOT_STOP]            VARCHAR (22)  NULL,
    [INCLUDE]                      VARCHAR (8)   NULL,
    [KEEP_LIST]                    VARCHAR (12)  NULL,
    [CLEAR_LIST]                   VARCHAR (12)  NULL,
    [DATE_STAMP]                   VARCHAR (12)  NULL,
    [LAST_REC]                     VARCHAR (15)  NULL,
    [LAST_PAY]                     VARCHAR (15)  NULL,
    [EDI_TEMPLATE]                 VARCHAR (15)  NULL,
    [ANA_EAN_LOCATION_CODE]        VARCHAR (25)  NULL,
    [DELIVERY_LOCATION_CODE]       VARCHAR (25)  NULL,
    [EDI_DETAILS]                  VARCHAR (12)  NULL,
    [ANA_IDENT_NUMBER]             VARCHAR (28)  NULL,
    [COMPANY_LOCATION_CODE]        VARCHAR (25)  NULL,
    [QTY_RETURNED]                 VARCHAR (15)  NULL,
    [QTY_RECEIVED]                 VARCHAR (15)  NULL,
    [QTY_CREDITED]                 VARCHAR (15)  NULL,
    [ENTER_START_SERIAL]           VARCHAR (28)  NULL,
    [ENTER_SERIAL_NUMBER]          VARCHAR (22)  NULL,
    [FOR_PURCHASE_ORDER]           VARCHAR (22)  NULL,
    [TO_SUPPLIER]                  VARCHAR (15)  NULL,
    [RETURNS_NO]                   VARCHAR (15)  NULL,
    [REVALUE]                      VARCHAR (10)  NULL,
    [AT_TEXT]                      VARCHAR (5)   NULL,
    [LIST_ITEM]                    VARCHAR (12)  NULL,
    [POP_UP_LISTS]                 VARCHAR (15)  NULL,
    [EDI_PACKAGE]                  VARCHAR (15)  NULL,
    [OUTPUT_TEXT]                  VARCHAR (8)   NULL,
    [ALL_PERIODS]                  VARCHAR (15)  NULL,
    [SHOW_ITEM_CODE]               VARCHAR (18)  NULL,
    [DUE_IN_THIS_PERIOD_ON]        VARCHAR (48)  NULL,
    [DUE_ON_ACQUISITIONS]          VARCHAR (22)  NULL,
    [TOTAL_OF_BOXES]               VARCHAR (25)  NULL,
    [RECLAIMED_IN_THIS_PD]         VARCHAR (55)  NULL,
    [TO_BE_PAID_TO_CUSTOMS]        VARCHAR (45)  NULL,
    [TOTAL_VALUE_OF_SALES]         VARCHAR (60)  NULL,
    [TOTAL_VALUE_OF_PURCH]         VARCHAR (65)  NULL,
    [TOTAL_VALUE_OF_EC_SUP]        VARCHAR (30)  NULL,
    [TOTAL_VALUE_OF_EC_ACQ]        VARCHAR (35)  NULL,
    [VALUATION]                    VARCHAR (12)  NULL,
    [TAX_RATE_LABELS]              VARCHAR (18)  NULL,
    [TAX_SORT_KEY]                 VARCHAR (15)  NULL,
    [ABOUT]                        VARCHAR (8)   NULL,
    [SNAPSHOT]                     VARCHAR (10)  NULL,
    [NO_STARTUP_MODULE]            VARCHAR (20)  NULL,
    [STAGGER_WINDOW_HGHTS]         VARCHAR (28)  NULL,
    [STAGGER_WINDOW_WDTHS]         VARCHAR (28)  NULL,
    [HOME_DEFAULTS]                VARCHAR (15)  NULL,
    [CONTACTS]                     VARCHAR (12)  NULL,
    [EXPORT_TEXT]                  VARCHAR (10)  NULL,
    [MAIN_CONTACT]                 VARCHAR (10)  NULL,
    [USER_INFORMATION]             VARCHAR (20)  NULL,
    [TOOLBAR_TEXT]                 VARCHAR (10)  NULL,
    [RECONCILIATION_FOR]           VARCHAR (20)  NULL,
    [RECONCILIATION_CORRECT]       VARCHAR (32)  NULL,
    [TRANSFERS_TEXT]               VARCHAR (12)  NULL,
    [GOODS_RELATED_SERVICES]       VARCHAR (28)  NULL,
    [NONRELATED_SERVICES]          VARCHAR (22)  NULL,
    [NONREGISTERED_WITH]           VARCHAR (30)  NULL,
    [NONREGISTERED_NO]             VARCHAR (28)  NULL,
    [ACQUISITIONS_OF_GOODS]        VARCHAR (35)  NULL,
    [CURRENCY_TRANSFER_JNLS]       VARCHAR (28)  NULL,
    [SIR_TEXT]                     VARCHAR (5)   NULL,
    [MADAM_TEXT]                   VARCHAR (8)   NULL,
    [MR_TEXT]                      VARCHAR (5)   NULL,
    [MRS_TEXT]                     VARCHAR (5)   NULL,
    [MS_TEXT]                      VARCHAR (5)   NULL,
    [MISS_TEXT]                    VARCHAR (5)   NULL,
    [A_REF_TYPED_HERE]             VARCHAR (18)  NULL,
    [PARAGRAPH_ONE_HERE]           VARCHAR (26)  NULL,
    [PARAGRAPH_THREE_HERE]         VARCHAR (28)  NULL,
    [ENTER_NAME]                   VARCHAR (12)  NULL,
    [ENTER_POSITION]               VARCHAR (16)  NULL,
    [DISPATCHES_TEXT]              VARCHAR (12)  NULL,
    [ARRIVALS_TEXT]                VARCHAR (12)  NULL,
    [SUMMARY_AUDIT_WIDE]           VARCHAR (22)  NULL,
    [DETAILED_AUDIT_WIDE]          VARCHAR (22)  NULL,
    [NUMERIC_COUNTRY_ID]           VARCHAR (20)  NULL,
    [COUNTRY_CODE_VAT_PREFIX]      VARCHAR (25)  NULL,
    [VAT_REGISTRATION_NUMBER]      VARCHAR (25)  NULL,
    [CHANGE_HOME_COUNTRY]          VARCHAR (35)  NULL,
    [VAT_REG_PREFIX]               VARCHAR (20)  NULL,
    [CHANGE_EU_STATE_UTILITY]      VARCHAR (45)  NULL,
    [DIRECT_RATE]                  VARCHAR (15)  NULL,
    [TRIANGULATED_RATE]            VARCHAR (20)  NULL,
    [WORKFLOW_FORMS]               VARCHAR (20)  NULL,
    [SELECT_APPROVER_AFTER_MATCH]  VARCHAR (50)  NULL,
    [REPORTING_CODE]               VARCHAR (20)  NULL,
    [COA_MESSAGE]                  VARCHAR (250) NULL,
    [NOMINAL_ACCOUNT_OVERVIEW]     VARCHAR (30)  NULL,
    [TURNOVER_TEXT]                VARCHAR (20)  NULL,
    [AUTOMATIC_SUPP_CODES_TEXT]    VARCHAR (40)  NULL,
    [GLOBAL_ACD_LOCATION]          VARCHAR (25)  NULL,
    [ACD_THEME_TEXT]               VARCHAR (15)  NULL,
    [MOVE_UP_BTN]                  VARCHAR (15)  NULL,
    [MOVE_DOWN_BTN]                VARCHAR (15)  NULL,
    [PASTE_STRUCTURE]              VARCHAR (20)  NULL,
    [ADD_TOP_CAT_BTN]              VARCHAR (30)  NULL,
    [ADD_CATEGORIES_BTN]           VARCHAR (20)  NULL,
    [SELECT_APPROVER_AFTER_DETAIL] VARCHAR (40)  NULL,
    CONSTRAINT [LANGCODE_DEF4_PK] PRIMARY KEY CLUSTERED ([LANGCODE_DEF4] ASC) WITH (FILLFACTOR = 70)
);

