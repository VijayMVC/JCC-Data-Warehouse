﻿CREATE TABLE [dbo].[SL_PL_ALLOC_CORRECT_TEMP] (
    [ALLOC_ID]  INT          NOT NULL,
    [ALLOC_REF] VARCHAR (10) NOT NULL,
    CONSTRAINT [SL_PL_ALLOC_CORRECT_TEMP_PK] PRIMARY KEY CLUSTERED ([ALLOC_ID] ASC, [ALLOC_REF] ASC)
);

