﻿CREATE TABLE [dbo].[SDK_SL_PL_SCHEDULE] (
    [SLPLSYSD_PRIMARY] INT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SLPLSYSD_TYPE]    VARCHAR (4) NULL,
    [SLPLSYSD_DATE]    DATETIME    NULL,
    CONSTRAINT [SLPLSYSD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SLPLSYSD_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

