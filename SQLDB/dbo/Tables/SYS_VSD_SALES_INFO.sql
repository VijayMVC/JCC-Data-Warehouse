﻿CREATE TABLE [dbo].[SYS_VSD_SALES_INFO] (
    [VSDS_PRIMARY] FLOAT (53) NOT NULL,
    CONSTRAINT [VSDS_PRIMARY_PK] PRIMARY KEY CLUSTERED ([VSDS_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [VSDS_PRIMARY_FK] FOREIGN KEY ([VSDS_PRIMARY]) REFERENCES [dbo].[SL_TRANSACTIONS] ([ST_PRIMARY]) ON DELETE CASCADE
);

