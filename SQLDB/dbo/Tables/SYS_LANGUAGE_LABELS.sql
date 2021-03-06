﻿CREATE TABLE [dbo].[SYS_LANGUAGE_LABELS] (
    [LANGUAGE_LABEL_PRIMARY] INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [FORM_KEY]               NVARCHAR (120) NULL,
    [LABEL_TAG]              VARCHAR (120)  NULL,
    [STANDARD]               BIT            DEFAULT ((0)) NOT NULL,
    CONSTRAINT [SYS_LANGUAGE_LABELS_PK] PRIMARY KEY CLUSTERED ([LANGUAGE_LABEL_PRIMARY] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [FORM_KEY]
    ON [dbo].[SYS_LANGUAGE_LABELS]([FORM_KEY] ASC, [LABEL_TAG] ASC);

