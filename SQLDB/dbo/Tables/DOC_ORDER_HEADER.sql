﻿CREATE TABLE [dbo].[DOC_ORDER_HEADER] (
    [DOH_ORDER_LINK]         FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_PRIMARY]            INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [DOH_USER_ID]            VARCHAR (4)    NULL,
    [DOH_DOC_TYPE]           VARCHAR (3)    NULL,
    [DOH_DOC_DATE]           DATETIME       NULL,
    [DOH_DOC_DUEDATE]        DATETIME       NULL,
    [DOH_VAT_CODE1]          VARCHAR (4)    NULL,
    [DOH_VAT_CODE2]          VARCHAR (4)    NULL,
    [DOH_VAT_CODE3]          VARCHAR (4)    NULL,
    [DOH_VAT_CODE4]          VARCHAR (4)    NULL,
    [DOH_VAT_CODE5]          VARCHAR (4)    NULL,
    [DOH_VAT_NET1]           FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_NET2]           FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_NET3]           FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_NET4]           FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_NET5]           FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_VALUE1]         FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_VALUE2]         FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_VALUE3]         FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_VALUE4]         FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_VALUE5]         FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_EXTRA_ADDRESS]      VARCHAR (250)  NULL,
    [DOH_DOC_NUMBER]         VARCHAR (10)   NULL,
    [DOH_SYS_LINK]           FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_OPTION1]            VARCHAR (3)    NULL,
    [DOH_OPTION2]            VARCHAR (3)    NULL,
    [DOH_FAX_HEADER]         TEXT           NULL,
    [DOH_COMP_ADDRESS]       TEXT           NULL,
    [DOH_REVALUE_RATE]       FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_REVERSE_VAT_VALUE1] FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_REVERSE_VAT_VALUE2] FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_REVERSE_VAT_VALUE3] FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_REVERSE_VAT_VALUE4] FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_REVERSE_VAT_VALUE5] FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_REFERENCE]          VARCHAR (10)   NULL,
    [DOH_DESCRIPTION]        VARCHAR (240)  NULL,
    [DOH_VAT_TYPE1]          VARCHAR (1)    NULL,
    [DOH_VAT_TYPE2]          VARCHAR (1)    NULL,
    [DOH_VAT_TYPE3]          VARCHAR (1)    NULL,
    [DOH_VAT_TYPE4]          VARCHAR (1)    NULL,
    [DOH_FAX_FOOTER]         VARCHAR (2048) NULL,
    [DOH_VAT_RATE1]          FLOAT (53)     NULL,
    [DOH_VAT_RATE2]          FLOAT (53)     NULL,
    [DOH_VAT_RATE3]          FLOAT (53)     NULL,
    [DOH_VAT_RATE4]          FLOAT (53)     NULL,
    [DOH_VAT_RATE5]          FLOAT (53)     NULL,
    [DOH_VAT_CURR_VALUE1]    FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_CURR_VALUE2]    FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_CURR_VALUE3]    FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_CURR_VALUE4]    FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_CURR_VALUE5]    FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_BASE2_VALUE1]   FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_BASE2_VALUE2]   FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_BASE2_VALUE3]   FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_BASE2_VALUE4]   FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_VAT_BASE2_VALUE5]   FLOAT (53)     DEFAULT ((0)) NULL,
    [DOH_DESTINATION]        VARCHAR (1)    NULL,
    [DOH_ORDER_NOTES]        TEXT           NULL,
    CONSTRAINT [DOH_PRIMARY_PK] PRIMARY KEY CLUSTERED ([DOH_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DOH_USER_ID]
    ON [dbo].[DOC_ORDER_HEADER]([DOH_USER_ID] ASC);
