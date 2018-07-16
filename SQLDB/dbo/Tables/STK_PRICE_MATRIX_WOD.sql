﻿CREATE TABLE [dbo].[STK_PRICE_MATRIX_WOD] (
    [WOD_PRIMARY]         FLOAT (53)   NOT NULL,
    [WOD_PARENT]          FLOAT (53)   NULL,
    [WOD_QUAL_TYPE]       TINYINT      NULL,
    [WOD_QUAL_VAL]        FLOAT (53)   NULL,
    [WOD_QUAL_QTY]        FLOAT (53)   NULL,
    [WOD_DISC_FIXED]      FLOAT (53)   NULL,
    [WOD_DISC_PERCENT]    FLOAT (53)   NULL,
    [WOD_PRCODE]          VARCHAR (16) NULL,
    [WOD_SINGLE_OR_MULTI] TINYINT      NULL,
    [WOD_OFFER_TYPE]      TINYINT      DEFAULT ((0)) NULL,
    [WOD_PROD_TYPE]       VARCHAR (1)  NULL,
    [WOD_PROD]            VARCHAR (25) NULL,
    [WOD_FREE_QTY]        FLOAT (53)   DEFAULT ((0)) NULL,
    [WOD_DISCOUNT_TYPE]   TINYINT      DEFAULT ((0)) NOT NULL,
    CONSTRAINT [WOD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([WOD_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);


GO
CREATE NONCLUSTERED INDEX [WOD_PARENT]
    ON [dbo].[STK_PRICE_MATRIX_WOD]([WOD_PARENT] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [WOD_PRCODE]
    ON [dbo].[STK_PRICE_MATRIX_WOD]([WOD_PRCODE] ASC) WITH (FILLFACTOR = 70);
