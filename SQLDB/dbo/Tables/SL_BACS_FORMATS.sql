﻿CREATE TABLE [dbo].[SL_BACS_FORMATS] (
    [SLB_PRIMARY]      INT           NOT NULL,
    [SLB_BACS_FORMATS] VARCHAR (MAX) NULL,
    [SLB_SELECTION]    VARCHAR (256) NULL,
    [SLB_NAMES]        VARCHAR (MAX) NULL,
    [SLB_DATE]         DATETIME      NULL,
    CONSTRAINT [SLB_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SLB_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

