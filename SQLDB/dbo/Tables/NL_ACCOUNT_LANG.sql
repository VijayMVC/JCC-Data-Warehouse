﻿CREATE TABLE [dbo].[NL_ACCOUNT_LANG] (
    [NACCLANG_LANGCODE] VARCHAR (10) NOT NULL,
    [NACCLANG_ACCCODE]  VARCHAR (25) NOT NULL,
    [NACCLANG_ACCNAME]  VARCHAR (80) NULL,
    CONSTRAINT [NL_ACCOUNT_LANG_PK] PRIMARY KEY CLUSTERED ([NACCLANG_LANGCODE] ASC, [NACCLANG_ACCCODE] ASC)
);

