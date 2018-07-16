﻿CREATE TABLE [dbo].[SYS_LOCKING] (
    [LOCK_PRIMARY]        INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [LOCK_USER_ID]        VARCHAR (4)  NOT NULL,
    [LOCK_PROCESS_ID]     INT          NOT NULL,
    [LOCK_ORD_HEADER_REF] VARCHAR (10) NULL,
    [LOCK_ORD_PRIMARY]    INT          NULL,
    [LOCK_ACCOUNT_CODE]   VARCHAR (25) NULL,
    [LOCK_SOURCE_MODULE]  VARCHAR (4)  NOT NULL,
    [LOCK_DATA_SOURCE]    CHAR (1)     NULL,
    CONSTRAINT [LOCK_PRIMARY_PK] PRIMARY KEY CLUSTERED ([LOCK_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [LOCK_ORD_PRIMARY]
    ON [dbo].[SYS_LOCKING]([LOCK_ORD_PRIMARY] ASC);


GO
CREATE NONCLUSTERED INDEX [LOCK_USER_ID]
    ON [dbo].[SYS_LOCKING]([LOCK_USER_ID] ASC);

