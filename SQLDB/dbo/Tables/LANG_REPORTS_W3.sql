﻿CREATE TABLE [dbo].[LANG_REPORTS_W3] (
    [LANGCODE_REPW3]        VARCHAR (10) NOT NULL,
    [USER_SUBTOTAL]         VARCHAR (22) NULL,
    [ALLOCATION_REPORT]     VARCHAR (18) NULL,
    [USERKEYS_REPW]         VARCHAR (17) NULL,
    [BASE2_REPW]            VARCHAR (18) NULL,
    [REVALUE_CURRENCY_REPW] VARCHAR (20) NULL,
    [EMAIL_REPW]            VARCHAR (10) NULL,
    [XML_REPW]              VARCHAR (3)  NULL,
    [SHOW_ADD_DETAILS_REPW] VARCHAR (30) NULL,
    [NOTQUERYINVS_REPW]     VARCHAR (25) NULL,
    CONSTRAINT [LANGCODE_REPW3_PK] PRIMARY KEY CLUSTERED ([LANGCODE_REPW3] ASC)
);
