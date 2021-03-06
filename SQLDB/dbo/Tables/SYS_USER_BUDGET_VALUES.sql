﻿CREATE TABLE [dbo].[SYS_USER_BUDGET_VALUES] (
    [UB_USERID]    VARCHAR (4) NULL,
    [UB_YEAR]      VARCHAR (1) NULL,
    [UB_PERIOD]    TINYINT     DEFAULT ((0)) NULL,
    [UB_VALUE]     FLOAT (53)  DEFAULT ((0)) NULL,
    [UB_PRIMARY]   INT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [UB_YEAR_LINK] SMALLINT    NULL,
    CONSTRAINT [UB_PRIMARY_PK] PRIMARY KEY CLUSTERED ([UB_PRIMARY] ASC),
    CONSTRAINT [UB_YEAR_LINK_CK] CHECK ([UB_YEAR] IS NOT NULL AND (upper([UB_YEAR])='O' OR upper([UB_YEAR])='N' OR upper([UB_YEAR])='C' OR upper([UB_YEAR])='L') AND [UB_YEAR_LINK] IS NOT NULL OR ([UB_YEAR] IS NULL OR (upper([UB_YEAR])='O' OR upper([UB_YEAR])='')) AND [UB_YEAR_LINK] IS NULL)
);


GO
CREATE NONCLUSTERED INDEX [UB_USERID]
    ON [dbo].[SYS_USER_BUDGET_VALUES]([UB_USERID] ASC);

