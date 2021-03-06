﻿CREATE TABLE [dbo].[SYS_LANGUAGE_MESSAGE_TEXT_LINK] (
    [LANGUAGE_MESSAGE_LINK_PRIMARY] INT      IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [LANGUAGE_MESSAGE_FK]           INT      NOT NULL,
    [LANGUAGE_FK]                   INT      NOT NULL,
    [LANGUAGE_MESSAGE_TEXT_FK]      INT      NOT NULL,
    [MODIFIED_DATE]                 DATETIME NULL,
    CONSTRAINT [LANGUAGE_MESSAGE_LINK_PRIMARY_PK] PRIMARY KEY CLUSTERED ([LANGUAGE_MESSAGE_LINK_PRIMARY] ASC),
    CONSTRAINT [SYS_LANGUAGE_MESSAGE_TEXT_LINK_FK] FOREIGN KEY ([LANGUAGE_FK]) REFERENCES [dbo].[SYS_LANGUAGES] ([LANGUAGE_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [SYS_LANGUAGE_MESSAGE_TEXT_LINK_FK2] FOREIGN KEY ([LANGUAGE_MESSAGE_FK]) REFERENCES [dbo].[SYS_LANGUAGE_MESSAGES] ([LANGUAGE_MESSAGE_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [SYS_LANGUAGE_MESSAGE_TEXT_LINK_FK3] FOREIGN KEY ([LANGUAGE_MESSAGE_TEXT_FK]) REFERENCES [dbo].[SYS_LANGUAGE_MESSAGE_TEXT] ([LANGUAGE_MESSAGE_TEXT_PRIMARY]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SYS_LANGUAGE_MESSAGE_TEXT_UC]
    ON [dbo].[SYS_LANGUAGE_MESSAGE_TEXT_LINK]([LANGUAGE_FK] ASC, [LANGUAGE_MESSAGE_FK] ASC, [LANGUAGE_MESSAGE_TEXT_FK] ASC);

