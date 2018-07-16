﻿CREATE TABLE [dbo].[TB_XML_DETAIL] (
    [TXS_PRIMARY]    INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [TXS_HEADER_ID]  INT           DEFAULT ((0)) NULL,
    [TXS_PARENTNODE] VARCHAR (100) NULL,
    [TXS_NODENAME]   VARCHAR (100) NULL,
    [TXS_LEVEL]      INT           DEFAULT ((0)) NULL,
    [TXS_TYPE]       VARCHAR (1)   NULL,
    [TXS_WRITEYN]    VARCHAR (1)   NULL,
    [TXS_DATA]       TEXT          NULL,
    [TXS_FUNCTION]   VARCHAR (200) NULL,
    [TXS_CHOICE]     INT           DEFAULT ((0)) NULL,
    CONSTRAINT [TXS_PRIMARY_PK] PRIMARY KEY CLUSTERED ([TXS_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [TXS_HEADER_ID]
    ON [dbo].[TB_XML_DETAIL]([TXS_HEADER_ID] ASC);

