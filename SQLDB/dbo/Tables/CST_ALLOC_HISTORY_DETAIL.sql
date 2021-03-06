﻿CREATE TABLE [dbo].[CST_ALLOC_HISTORY_DETAIL] (
    [CAD_PRIMARY]          INT        IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [CAD_HEADER_LINK]      INT        NULL,
    [CAD_VALUE]            FLOAT (53) NULL,
    [CAD_VALUE_C]          FLOAT (53) NULL,
    [CAD_TRANSACTION_LINK] INT        NULL,
    CONSTRAINT [CAD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([CAD_PRIMARY] ASC)
);

