﻿CREATE TABLE [dbo].[ACP_CURRENCY_REC_LINK] (
    [ACRL_PRIMARY]         INT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [ACRL_PROCESS_DEFAULT] TINYINT     NULL,
    [ACRL_CURR_SYMBOL]     VARCHAR (4) NULL,
    [ACRL_ISO_CODE]        VARCHAR (3) NULL,
    [ACRL_DATE_UPDATED]    DATETIME    NULL,
    CONSTRAINT [ACRL_PRIMARY_PK] PRIMARY KEY CLUSTERED ([ACRL_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

