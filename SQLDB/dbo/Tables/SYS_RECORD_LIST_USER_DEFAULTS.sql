﻿CREATE TABLE [dbo].[SYS_RECORD_LIST_USER_DEFAULTS] (
    [SRLUD_SEARCH_LINK] INT         NOT NULL,
    [SRLUD_LIST_ID]     VARCHAR (4) NOT NULL,
    [SRLUD_USER_ID]     VARCHAR (4) NOT NULL,
    CONSTRAINT [SRLUD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SRLUD_LIST_ID] ASC, [SRLUD_USER_ID] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SRLUD_SEARCH_LINK_FK] FOREIGN KEY ([SRLUD_SEARCH_LINK], [SRLUD_LIST_ID]) REFERENCES [dbo].[SYS_RECORD_LIST_SEARCHES] ([SRLS_PRIMARY], [SRLS_LIST_ID]) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT [SRLUD_USER_ID_FK] FOREIGN KEY ([SRLUD_USER_ID]) REFERENCES [dbo].[SYS_USER] ([USER_ID]) ON DELETE CASCADE ON UPDATE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SRLUD_USER_ID_SRLUD_LIST_ID]
    ON [dbo].[SYS_RECORD_LIST_USER_DEFAULTS]([SRLUD_USER_ID] ASC, [SRLUD_LIST_ID] ASC)
    INCLUDE([SRLUD_SEARCH_LINK]) WITH (FILLFACTOR = 70);
