﻿CREATE TABLE [dbo].[SLTRN_BULKRCT_TEMP] (
    [SLBLK_ID]                      BIGINT          NOT NULL,
    [SLBLK_LINE_NO]                 BIGINT          NOT NULL,
    [SLBLK_TRAN_LINK]               BIGINT          NOT NULL,
    [SLBLK_CUSTOMER_CODE]           VARCHAR (25)    DEFAULT (NULL) NULL,
    [SLBLK_ALLOCATED_VALUE]         DECIMAL (24, 8) DEFAULT ((0)) NULL,
    [SLBLK_SETTDISCOUNT_VALUE]      DECIMAL (24, 8) DEFAULT ((0)) NULL,
    [SLBLK_DISPUTE]                 BIT             DEFAULT (NULL) NULL,
    [SLBLK_ALLOCATION_DATE]         DATETIME        DEFAULT (NULL) NULL,
    [SLBLK_ALLOCATION_PERIOD]       TINYINT         DEFAULT (NULL) NULL,
    [SLBLK_ALLOCATION_YEAR]         CHAR (1)        DEFAULT (NULL) NULL,
    [SLBLK_ALLOCATION_YEAR_ENUM]    INT             DEFAULT (NULL) NULL,
    [SLBLK_STATUS]                  TINYINT         DEFAULT ((0)) NULL,
    [SLBLK_IS_DEBIT]                INT             DEFAULT (NULL) NULL,
    [SLBLK_IS_CREDIT]               INT             DEFAULT (NULL) NULL,
    [SLBLK_TRN_RATIO_HOME_TO_CURR]  DECIMAL (16, 6) DEFAULT (NULL) NULL,
    [SLBLK_TRN_RATIO_HOME_TO_BASE2] DECIMAL (16, 6) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_DISC_HOME]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_DISC_CURR]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_DISC_BASE2]        DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_EXC_DISC_HOME]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_EXC_DISC_CURR]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_EXC_DISC_BASE2]    DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_INC_DISC_HOME]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_INC_DISC_CURR]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_VALUE_INC_DISC_BASE2]    DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_OS_TRN_BAL_HOME]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_OS_TRN_BAL_CURR]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_OS_TRN_BAL_BASE2]        DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_DISC_HOME]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_DISC_CURR]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_DISC_BASE2]        DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_EXC_DISC_HOME]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_EXC_DISC_CURR]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_EXC_DISC_BASE2]    DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_INC_DISC_HOME]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_INC_DISC_CURR]     DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_TOTAL_INC_DISC_BASE2]    DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_RCT_TOTAL_HOME]          DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_RCT_TOTAL_CURR]          DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_RCT_TOTAL_BASE2]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_DIFF_VALUE_HOME]         DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_DIFF_VALUE_BASE2]        DECIMAL (24, 8) DEFAULT (NULL) NULL,
    [SLBLK_DIFF_TYPE_HOME]          TINYINT         DEFAULT (NULL) NULL,
    [SLBLK_DIFF_TYPE_BASE2]         TINYINT         DEFAULT (NULL) NULL,
    [SLBLK_DIFF_TYPE]               TINYINT         DEFAULT (NULL) NULL,
    [SLBLK_DOC_PRIMARY]             BIGINT          DEFAULT (NULL) NULL,
    [SLBLK_FAX_NO]                  NVARCHAR (64)   DEFAULT (NULL) NULL,
    [SLBLK_ERR_NOT_OUTSTANDING]     BIT             DEFAULT (NULL) NULL,
    [SLBLK_LIST_REFERENCE]          VARCHAR (10)    DEFAULT (NULL) NULL,
    CONSTRAINT [SL_TRN_BULKRCT_TEMP_PK] PRIMARY KEY CLUSTERED ([SLBLK_ID] ASC, [SLBLK_LINE_NO] ASC)
);

