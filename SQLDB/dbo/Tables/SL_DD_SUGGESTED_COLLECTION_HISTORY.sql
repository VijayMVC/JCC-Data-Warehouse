﻿CREATE TABLE [dbo].[SL_DD_SUGGESTED_COLLECTION_HISTORY] (
    [SDD_SCH_PRIMARY]                   INT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SDD_SCH_TRANSACTION_LINK]          FLOAT (53)  NOT NULL,
    [SDD_SCH_SUGGESTED_COLLECTION_LINK] INT         NOT NULL,
    [SDD_SCH_SUGGESTED_VALUE]           FLOAT (53)  NOT NULL,
    [SDD_SCH_SETT_DISC_VALUE]           FLOAT (53)  NOT NULL,
    [SDD_SCH_USER_ID]                   VARCHAR (4) NOT NULL,
    [SDD_SCH_DATE]                      DATETIME    NOT NULL,
    CONSTRAINT [SDD_SCH_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SDD_SCH_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SDD_SCH_SUGGESTED_COLLECTION_LINK_FK] FOREIGN KEY ([SDD_SCH_SUGGESTED_COLLECTION_LINK]) REFERENCES [dbo].[SL_DD_SUGGESTED_COLLECTIONS] ([SDD_SC_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [SDD_SCH_TRANSACTION_LINK_FK] FOREIGN KEY ([SDD_SCH_TRANSACTION_LINK]) REFERENCES [dbo].[SL_TRANSACTIONS] ([ST_PRIMARY]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [SDD_SCH_SUGGESTED_COLLECTION_LINK]
    ON [dbo].[SL_DD_SUGGESTED_COLLECTION_HISTORY]([SDD_SCH_SUGGESTED_COLLECTION_LINK] ASC, [SDD_SCH_TRANSACTION_LINK] ASC)
    INCLUDE([SDD_SCH_SETT_DISC_VALUE], [SDD_SCH_SUGGESTED_VALUE]) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [SDD_SCH_TRANSACTION_LINK]
    ON [dbo].[SL_DD_SUGGESTED_COLLECTION_HISTORY]([SDD_SCH_TRANSACTION_LINK] ASC, [SDD_SCH_SUGGESTED_COLLECTION_LINK] ASC)
    INCLUDE([SDD_SCH_SETT_DISC_VALUE], [SDD_SCH_SUGGESTED_VALUE]) WITH (FILLFACTOR = 70);

