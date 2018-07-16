﻿CREATE TABLE [dbo].[SYS_FAX_SOFTWARE] (
    [SFS_PRIMARY]       INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SFS_SOFTWARE_NAME] VARCHAR (64) NULL,
    [SFS_PROTECTED]     TINYINT      DEFAULT ((0)) NULL,
    CONSTRAINT [SFS_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SFS_PRIMARY] ASC)
);
