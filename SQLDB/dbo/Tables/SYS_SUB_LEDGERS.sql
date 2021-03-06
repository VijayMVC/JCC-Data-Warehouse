﻿CREATE TABLE [dbo].[SYS_SUB_LEDGERS] (
    [SUBL_CODE]              VARCHAR (10) NULL,
    [SUBL_TYPE]              VARCHAR (1)  NULL,
    [SUBL_DESCRIPTION]       VARCHAR (40) NULL,
    [SUBL_AUDIT_NO]          FLOAT (53)   DEFAULT ((0)) NULL,
    [SUBL_INVOICE_NO]        FLOAT (53)   DEFAULT ((0)) NULL,
    [SUBL_CREDIT_NO]         FLOAT (53)   DEFAULT ((0)) NULL,
    [SUBL_OTHERLEDGER_NO]    FLOAT (53)   DEFAULT ((0)) NULL,
    [SUBL_PRIMARY]           FLOAT (53)   NOT NULL,
    [SUBL_USED]              TINYINT      DEFAULT ((0)) NULL,
    [SUBL_NCODE]             VARCHAR (25) NULL,
    [SUBL_BANK_AC_NO]        VARCHAR (15) NULL,
    [SUBL_BANK_SORTCODE]     VARCHAR (10) NULL,
    [SUBL_DISPLAY_REFERENCE] BIT          DEFAULT ((0)) NOT NULL,
    CONSTRAINT [SUBL_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SUBL_PRIMARY] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SUBL_CODE]
    ON [dbo].[SYS_SUB_LEDGERS]([SUBL_CODE] ASC, [SUBL_TYPE] ASC)
    INCLUDE([SUBL_USED]) WITH (FILLFACTOR = 70);

