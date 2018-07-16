﻿CREATE TABLE [dbo].[SDK_SLPL_ACCR_DETAIL] (
    [SLPLACRD_PRIMARY] INT      IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SLPLACRD_PARENT]  INT      NOT NULL,
    [SLPLACRD_DATE]    DATETIME NOT NULL,
    [SLPLACRD_POSTED]  INT      DEFAULT ((0)) NOT NULL,
    CONSTRAINT [SLPLACRD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SLPLACRD_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SLPLACRD_PARENT_FK] FOREIGN KEY ([SLPLACRD_PARENT]) REFERENCES [dbo].[SDK_SLPL_ACCR_HEADER] ([SLPLACC_PRIMARY]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [SLPLACRD_PARENT]
    ON [dbo].[SDK_SLPL_ACCR_DETAIL]([SLPLACRD_PARENT] ASC) WITH (FILLFACTOR = 70);

