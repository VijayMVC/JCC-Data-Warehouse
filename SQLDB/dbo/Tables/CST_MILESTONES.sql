﻿CREATE TABLE [dbo].[CST_MILESTONES] (
    [MS_PRIMARY]         INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [MS_PROJECT_LINK]    INT          NULL,
    [MS_DESCRIPTION]     VARCHAR (40) NULL,
    [MS_DATE]            DATETIME     NULL,
    [MS_PERCENTAGE]      FLOAT (53)   NULL,
    [MS_VALUE]           FLOAT (53)   NULL,
    [MS_WIP_CENTRE_LINK] INT          NULL,
    [MS_COMPLETED]       BIT          DEFAULT ((0)) NOT NULL,
    [MS_COSTS]           FLOAT (53)   NULL,
    [MS_INVOICED]        FLOAT (53)   NULL,
    [MS_RETAINED]        FLOAT (53)   NULL,
    CONSTRAINT [MS_PRIMARY_PK] PRIMARY KEY CLUSTERED ([MS_PRIMARY] ASC)
);

