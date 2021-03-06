﻿CREATE TABLE [dbo].[STK_MATRIX] (
    [MAT_TYPE]        VARCHAR (1)  NULL,
    [MAT_STOCK_KEY]   VARCHAR (25) NULL,
    [MAT_CUSTOMER]    VARCHAR (20) NULL,
    [MAT_CONCAT_CODE] VARCHAR (45) NULL,
    [MAT_NOTES]       TEXT         NULL,
    [MAT_PERCENTAGE]  FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PRICE]       FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PRICE_C]     FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT1]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT2]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT3]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT4]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT5]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT6]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT7]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT8]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT9]    FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_PERCENT10]   FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_BUDGETQTY]   FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_BUDGETVALUE] FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_BUDGETVAL_C] FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_ACTUALQTY]   FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_ACTUALVALUE] FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_ACTUALVAL_C] FLOAT (53)   DEFAULT ((0)) NULL,
    [MAT_USER_EDITED] VARCHAR (4)  NULL,
    [MAT_USER_PUTIN]  VARCHAR (4)  NULL,
    [MAT_DATE_PUTIN]  DATETIME     NULL,
    [MAT_DATE_EDITED] DATETIME     NULL,
    [MAT_MU_STATUS]   VARCHAR (1)  NULL,
    [MAT_PRIMARY]     FLOAT (53)   NOT NULL,
    [MAT_LEVEL]       INT          DEFAULT ((0)) NULL,
    [MAT_GROUP]       VARCHAR (10) NULL,
    CONSTRAINT [MAT_PRIMARY_PK] PRIMARY KEY CLUSTERED ([MAT_PRIMARY] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [MAT_CONCAT_CODE]
    ON [dbo].[STK_MATRIX]([MAT_CONCAT_CODE] ASC);


GO
CREATE NONCLUSTERED INDEX [MAT_CUSTOMER]
    ON [dbo].[STK_MATRIX]([MAT_CUSTOMER] ASC);


GO
CREATE NONCLUSTERED INDEX [MAT_STOCK_KEY]
    ON [dbo].[STK_MATRIX]([MAT_STOCK_KEY] ASC);

