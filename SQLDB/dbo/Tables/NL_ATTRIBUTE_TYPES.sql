﻿CREATE TABLE [dbo].[NL_ATTRIBUTE_TYPES] (
    [NATT_PRIMARY]         INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [NATT_CODE]            VARCHAR (15)  NOT NULL,
    [NATT_DESCRIPTION]     VARCHAR (40)  NULL,
    [NATT_USER_PUTIN]      VARCHAR (4)   NULL,
    [NATT_DATE_PUTIN]      DATETIME      NULL,
    [NATT_USER_EDITED]     VARCHAR (4)   NULL,
    [NATT_DATE_EDITED]     DATETIME      NULL,
    [NATT_SOURCE]          VARCHAR (1)   NULL,
    [NATT_CATEGORY_NUMBER] TINYINT       NULL,
    [NATT_NOTE]            VARCHAR (MAX) NULL,
    CONSTRAINT [NATT_PRIMARY_PK] PRIMARY KEY CLUSTERED ([NATT_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [NATT_CATEGORY_NUMBER_CK] CHECK ([NATT_CATEGORY_NUMBER] IS NULL OR [NATT_CATEGORY_NUMBER]>=(1) AND [NATT_CATEGORY_NUMBER]<=(8))
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NATT_CODE]
    ON [dbo].[NL_ATTRIBUTE_TYPES]([NATT_CODE] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [NATT_DESCRIPTION]
    ON [dbo].[NL_ATTRIBUTE_TYPES]([NATT_DESCRIPTION] ASC) WITH (FILLFACTOR = 70);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NATT_PRIMARY_NATT_CATEGORY_NUMBER]
    ON [dbo].[NL_ATTRIBUTE_TYPES]([NATT_PRIMARY] ASC, [NATT_CATEGORY_NUMBER] ASC) WITH (FILLFACTOR = 70);

