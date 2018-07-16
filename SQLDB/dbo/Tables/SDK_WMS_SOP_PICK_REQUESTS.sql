﻿CREATE TABLE [dbo].[SDK_WMS_SOP_PICK_REQUESTS] (
    [WMSPR_ORDER_DETAIL_LINK]   FLOAT (53)   NOT NULL,
    [WMSPR_PICK_REQUEST_NUMBER] INT          NOT NULL,
    [WMSPR_STOCK_LINK]          FLOAT (53)   NOT NULL,
    [WMSPR_QUANTITY]            FLOAT (53)   DEFAULT ((0)) NOT NULL,
    [WMSPR_ALLOCATION_QUANTITY] FLOAT (53)   DEFAULT ((0)) NOT NULL,
    [WMSPR_STATUS]              TINYINT      NULL,
    [WMSPR_SITE]                VARCHAR (10) NULL,
    [WMSPR_QUANTITY_DELIVERED]  FLOAT (53)   DEFAULT ((0)) NOT NULL,
    [WMSPR_USER_PUTIN]          VARCHAR (4)  NULL,
    [WMSPR_DATE_PUTIN]          DATETIME     DEFAULT (getdate()) NULL,
    [WMSPR_FILE_NAME]           VARCHAR (50) NULL,
    CONSTRAINT [SDK_WMS_SOP_PICK_REQUESTS_PK] PRIMARY KEY CLUSTERED ([WMSPR_ORDER_DETAIL_LINK] ASC, [WMSPR_PICK_REQUEST_NUMBER] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [FK_WMSPR_ORDER_DETAIL_LINK] FOREIGN KEY ([WMSPR_ORDER_DETAIL_LINK]) REFERENCES [dbo].[ORD_DETAIL] ([OD_PRIMARY]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [WMSPR_STOCK_LINK]
    ON [dbo].[SDK_WMS_SOP_PICK_REQUESTS]([WMSPR_STOCK_LINK] ASC, [WMSPR_STATUS] ASC)
    INCLUDE([WMSPR_QUANTITY], [WMSPR_ALLOCATION_QUANTITY]) WITH (FILLFACTOR = 70);

