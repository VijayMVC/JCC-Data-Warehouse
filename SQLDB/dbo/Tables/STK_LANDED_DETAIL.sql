﻿CREATE TABLE [dbo].[STK_LANDED_DETAIL] (
    [LD_PRIMARY]       INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [LD_LINE]          TINYINT      DEFAULT ((0)) NULL,
    [LD_TYPE]          VARCHAR (1)  NULL,
    [LD_VALUE]         FLOAT (53)   DEFAULT ((0)) NULL,
    [LD_COST]          FLOAT (53)   DEFAULT ((0)) NULL,
    [LD_DESCRIPTION]   VARCHAR (20) NULL,
    [LD_MOVEMENT_LINK] FLOAT (53)   DEFAULT ((0)) NULL,
    [LD_VALUE_BASE2]   FLOAT (53)   DEFAULT ((0)) NULL,
    [LD_COST_BASE2]    FLOAT (53)   DEFAULT ((0)) NULL,
    CONSTRAINT [LD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([LD_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [LD_MOVEMENT_LINK]
    ON [dbo].[STK_LANDED_DETAIL]([LD_MOVEMENT_LINK] ASC);
