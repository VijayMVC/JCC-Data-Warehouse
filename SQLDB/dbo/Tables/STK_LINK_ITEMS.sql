﻿CREATE TABLE [dbo].[STK_LINK_ITEMS] (
    [STK_LINK_PRIMARY]              FLOAT (53)   NOT NULL,
    [STK_LINK_PARENT]               VARCHAR (26) NULL,
    [STK_LINK_CHILD]                VARCHAR (25) NULL,
    [STK_LINK_QTY]                  FLOAT (53)   DEFAULT ((0)) NULL,
    [STK_LINK_COST_PRICE_NUMBER]    TINYINT      NULL,
    [STK_LINK_SELL_PRICE_NUMBER]    TINYINT      NULL,
    [STK_LINK_DEFAULT_SUB_ANALYSIS] INT          NULL,
    CONSTRAINT [STK_LINK_PRIMARY_PK] PRIMARY KEY CLUSTERED ([STK_LINK_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [STK_LINK_PARENT]
    ON [dbo].[STK_LINK_ITEMS]([STK_LINK_PARENT] ASC);


GO
CREATE TRIGGER [dbo].[AA_STK_LINKED_ITEM_DELETE_T]
    ON [dbo].[STK_LINK_ITEMS]
    WITH ENCRYPTION
    AFTER DELETE
    AS 
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

