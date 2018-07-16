﻿CREATE TABLE [dbo].[STK_ASSEMBLIES] (
    [AS_REFERENCE]    VARCHAR (60) NULL,
    [AS_DESCRIPTION]  VARCHAR (80) NULL,
    [AS_DATE]         DATETIME     NULL,
    [AS_QTY]          FLOAT (53)   DEFAULT ((0)) NULL,
    [AS_COSTPRICE]    FLOAT (53)   DEFAULT ((0)) NULL,
    [AS_SELLPRICE]    FLOAT (53)   DEFAULT ((0)) NULL,
    [AS_RESERVED]     FLOAT (53)   DEFAULT ((0)) NULL,
    [AS_LABOUR]       TINYINT      DEFAULT ((0)) NULL,
    [AS_BACKFLUSH]    TINYINT      DEFAULT ((0)) NULL,
    [AS_PART_CODE]    VARCHAR (25) NULL,
    [AS_TYPE]         VARCHAR (1)  NULL,
    [AS_MAIN_STKCODE] VARCHAR (25) NULL,
    [AS_SERIALTRACK]  TINYINT      DEFAULT ((0)) NULL,
    [AS_LOCATION]     VARCHAR (25) NULL,
    [AS_MULTILOCATN]  TINYINT      DEFAULT ((0)) NULL,
    [AS_USER_EDITED]  VARCHAR (4)  NULL,
    [AS_DATE_EDITED]  DATETIME     NULL,
    [AS_USER_PUTIN]   VARCHAR (4)  NULL,
    [AS_DATE_PUTIN]   DATETIME     NULL,
    [AS_MU_STATUS]    VARCHAR (1)  NULL,
    [AS_PRIMARY]      FLOAT (53)   NOT NULL,
    CONSTRAINT [AS_PRIMARY_PK] PRIMARY KEY CLUSTERED ([AS_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [AS_MAIN_STKCODE]
    ON [dbo].[STK_ASSEMBLIES]([AS_MAIN_STKCODE] ASC);


GO
CREATE NONCLUSTERED INDEX [AS_PART_CODE]
    ON [dbo].[STK_ASSEMBLIES]([AS_PART_CODE] ASC);
