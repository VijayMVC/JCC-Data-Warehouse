﻿CREATE TABLE [dbo].[TS_APPROVAL_LOG_RULE_RESULT] (
    [APRR_PRIMARY]      FLOAT (53)     NOT NULL,
    [APRR_APAL_PRIMARY] FLOAT (53)     DEFAULT ((0)) NOT NULL,
    [APRR_APAR_PRIMARY] FLOAT (53)     DEFAULT ((0)) NOT NULL,
    [APRR_RESULT]       TINYINT        DEFAULT ((0)) NOT NULL,
    [APRR_MESSAGE]      VARCHAR (1000) DEFAULT ('') NOT NULL,
    PRIMARY KEY CLUSTERED ([APRR_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

