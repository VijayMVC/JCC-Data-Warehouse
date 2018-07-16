﻿CREATE TABLE [dbo].[SYS_DRILLDOWN] (
    [DRL_PRIMARY]                  INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [DRL_USER_ID]                  VARCHAR (4)  NULL,
    [DRL_WINDOW_NAME]              VARCHAR (40) NULL,
    [DRL_SHOW_OVERALL_TOTALS]      TINYINT      DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_SELECTED]        INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_HEADER]          INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_DETAIL]          INT          DEFAULT ((0)) NULL,
    [DRL_LOAD_CURRENT_PERIOD]      TINYINT      DEFAULT ((0)) NULL,
    [DRL_CURRENT_OUTLINE_COLOUR]   INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_SUB]             INT          DEFAULT ((0)) NULL,
    [DRL_DO_NOT_LOAD_TRANSACTIONS] TINYINT      DEFAULT ((0)) NULL,
    [DRL_MAX_LIST_SIZE]            INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED3]       INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED4]       INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED5]       INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED6]       INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED7]       INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED8]       INT          DEFAULT ((0)) NULL,
    [DRL_BGCOLOUR_EXPANDED9]       INT          DEFAULT ((0)) NULL,
    [DRL_UNITS]                    INT          DEFAULT ((1)) NULL,
    [DRL_SHOW_DECIMALS]            BIT          DEFAULT ((1)) NOT NULL,
    [DRL_BGCOLOUR_FORECAST]        INT          DEFAULT ((0)) NULL,
    CONSTRAINT [DRL_PRIMARY_PK] PRIMARY KEY CLUSTERED ([DRL_PRIMARY] ASC)
);

