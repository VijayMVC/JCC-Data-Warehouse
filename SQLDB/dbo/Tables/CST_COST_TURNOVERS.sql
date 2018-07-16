﻿CREATE TABLE [dbo].[CST_COST_TURNOVERS] (
    [CCT_YEAR_LINK]    SMALLINT   NOT NULL,
    [CCT_PERIOD]       TINYINT    NOT NULL,
    [CCT_CENTRE_LINK]  INT        NOT NULL,
    [CCT_VALUE]        FLOAT (53) DEFAULT ((0)) NULL,
    [CCT_PROJECT_LINK] INT        NULL,
    CONSTRAINT [CCT_PRIMARY_PK] PRIMARY KEY CLUSTERED ([CCT_CENTRE_LINK] ASC, [CCT_YEAR_LINK] ASC, [CCT_PERIOD] ASC)
);


GO
CREATE NONCLUSTERED INDEX [CCT_PROJECT_YEAR]
    ON [dbo].[CST_COST_TURNOVERS]([CCT_PROJECT_LINK] ASC, [CCT_YEAR_LINK] ASC);
