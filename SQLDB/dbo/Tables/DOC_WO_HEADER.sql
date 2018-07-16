﻿CREATE TABLE [dbo].[DOC_WO_HEADER] (
    [DWH_PRIMARY]           INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [DWH_WO_ORDER_NUMBER]   INT          NULL,
    [DWH_USER_ID]           VARCHAR (4)  NULL,
    [DWH_SYS_LINK]          FLOAT (53)   NULL,
    [DWH_DOC_TYPE]          VARCHAR (3)  NULL,
    [DWH_SORT_KEY]          VARCHAR (1)  NULL,
    [DWH_TOP_LEVEL_WO_NO]   INT          NULL,
    [DWH_START_DATE]        DATETIME     NULL,
    [DWH_END_DATE]          DATETIME     NULL,
    [DWH_ROUTE]             VARCHAR (10) NULL,
    [DWH_QUANTITY_ORDERED]  FLOAT (53)   NULL,
    [DWH_QUANTITY_AT_STAGE] FLOAT (53)   NULL,
    [DWH_MAIN_STOCKCODE]    VARCHAR (25) NULL,
    [DWH_MAIN_STOCKNAME]    VARCHAR (80) NULL,
    [DWH_QUANTITY_BUILT]    FLOAT (53)   NULL,
    [DWH_SOP_ORDER_NO]      INT          NULL,
    [DWH_DESTINATION]       VARCHAR (1)  NULL,
    CONSTRAINT [DWH_PRIMARY_PK] PRIMARY KEY CLUSTERED ([DWH_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DWH_USER_ID]
    ON [dbo].[DOC_WO_HEADER]([DWH_USER_ID] ASC);
