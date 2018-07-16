﻿CREATE TABLE [dbo].[STK_LANDED_ANALYSIS] (
    [SLA_PRIMARY]           INT        IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SLA_LOC_LINK]          FLOAT (53) NOT NULL,
    [SLA_LINE]              TINYINT    NOT NULL,
    [SLA_POP_ANALYSIS_LINK] FLOAT (53) NULL,
    [SLA_SOP_ANALYSIS_LINK] FLOAT (53) NULL,
    [SLA_STK_ANALYSIS_LINK] FLOAT (53) NULL,
    CONSTRAINT [SLA_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SLA_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SLA_LOC_LINK_FK] FOREIGN KEY ([SLA_LOC_LINK]) REFERENCES [dbo].[STK_LOCATION] ([LOC_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [SLA_POP_ANALYSIS_LINK_FK] FOREIGN KEY ([SLA_POP_ANALYSIS_LINK]) REFERENCES [dbo].[PL_ANALYSIS] ([PA_PRIMARY]),
    CONSTRAINT [SLA_SOP_ANALYSIS_LINK_FK] FOREIGN KEY ([SLA_SOP_ANALYSIS_LINK]) REFERENCES [dbo].[SL_ANALYSIS] ([SA_PRIMARY]),
    CONSTRAINT [SLA_STK_ANALYSIS_LINK_FK] FOREIGN KEY ([SLA_STK_ANALYSIS_LINK]) REFERENCES [dbo].[PL_ANALYSIS] ([PA_PRIMARY])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SLA_LOC_LINK]
    ON [dbo].[STK_LANDED_ANALYSIS]([SLA_LOC_LINK] ASC, [SLA_LINE] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [SLA_POP_ANALYSIS_LINK]
    ON [dbo].[STK_LANDED_ANALYSIS]([SLA_POP_ANALYSIS_LINK] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [SLA_SOP_ANALYSIS_LINK]
    ON [dbo].[STK_LANDED_ANALYSIS]([SLA_SOP_ANALYSIS_LINK] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [SLA_STK_ANALYSIS_LINK]
    ON [dbo].[STK_LANDED_ANALYSIS]([SLA_STK_ANALYSIS_LINK] ASC) WITH (FILLFACTOR = 70);

