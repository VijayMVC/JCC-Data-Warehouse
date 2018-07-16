﻿CREATE TABLE [dbo].[TS_CUSTOM_STKENQ] (
    [SE_ID]                 FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [SE__INSERT_USERID]     VARCHAR (4)      DEFAULT ('') NOT NULL,
    [SE__INSERT_DATE]       DATETIME         NULL,
    [SE__EDIT_USERID]       VARCHAR (4)      DEFAULT ('') NOT NULL,
    [SE__EDIT_DATE]         DATETIME         NULL,
    [SE__FOREIGN_KEY]       INT              DEFAULT ((0)) NOT NULL,
    [SE__GUID]              UNIQUEIDENTIFIER NULL,
    [SE_STOCK_CODE]         NVARCHAR (20)    DEFAULT ('') NOT NULL,
    [SE_AVAILABLE_STOCK]    FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [SE_BACK_ORDER_QTY]     FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [SE_FREE_STOCK]         FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [SE_CUSTOMER_CODE]      NVARCHAR (10)    DEFAULT ('') NOT NULL,
    [SE_PRICEBOOK]          NVARCHAR (20)    DEFAULT ('') NOT NULL,
    [SE_WORKS_ORDER_DEMAND] FLOAT (53)       DEFAULT ((0)) NOT NULL,
    CONSTRAINT [TS_CUSTOM_STKENQ_PK] PRIMARY KEY NONCLUSTERED ([SE_ID] ASC) WITH (FILLFACTOR = 70)
);


GO
CREATE UNIQUE CLUSTERED INDEX [SE_ID]
    ON [dbo].[TS_CUSTOM_STKENQ]([SE_ID] ASC) WITH (FILLFACTOR = 70);

