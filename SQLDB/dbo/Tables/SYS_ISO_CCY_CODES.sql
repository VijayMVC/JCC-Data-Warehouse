﻿CREATE TABLE [dbo].[SYS_ISO_CCY_CODES] (
    [IC_PRIMARY]     INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [IC_CODE]        VARCHAR (3)   NULL,
    [IC_DESCRIPTION] VARCHAR (100) NULL,
    CONSTRAINT [IC_PRIMARY_PK] PRIMARY KEY CLUSTERED ([IC_PRIMARY] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IC_CODE]
    ON [dbo].[SYS_ISO_CCY_CODES]([IC_CODE] ASC) WITH (FILLFACTOR = 70);

