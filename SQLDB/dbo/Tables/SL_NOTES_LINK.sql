﻿CREATE TABLE [dbo].[SL_NOTES_LINK] (
    [SLN_LINK_NOTE]              INT         NOT NULL,
    [SLN_LINK_CUSTOMER]          FLOAT (53)  NOT NULL,
    [SLN_LINK_TRANSACTION]       FLOAT (53)  NULL,
    [SLN_LINK_DEBT_STATUS]       INT         NULL,
    [SLN_LINK_CREDIT_CONTROLLER] VARCHAR (4) NULL,
    [SLN_LINK_PRIMARY]           INT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    CONSTRAINT [SLN_LINK_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SLN_LINK_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SLN_LINK_CUSTOMER_FK] FOREIGN KEY ([SLN_LINK_CUSTOMER]) REFERENCES [dbo].[SL_ACCOUNTS] ([CU_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [SLN_LINK_NOTE_FK] FOREIGN KEY ([SLN_LINK_NOTE]) REFERENCES [dbo].[SL_NOTES] ([SLN_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [SLN_LINK_TRANSACTION_FK] FOREIGN KEY ([SLN_LINK_TRANSACTION]) REFERENCES [dbo].[SL_TRANSACTIONS] ([ST_PRIMARY]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SLN_NOTES_LINK_UK]
    ON [dbo].[SL_NOTES_LINK]([SLN_LINK_CUSTOMER] ASC, [SLN_LINK_TRANSACTION] ASC, [SLN_LINK_NOTE] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [SLN_LINK_TRANSACTION]
    ON [dbo].[SL_NOTES_LINK]([SLN_LINK_TRANSACTION] ASC, [SLN_LINK_NOTE] ASC)
    INCLUDE([SLN_LINK_CUSTOMER]) WITH (FILLFACTOR = 70);

