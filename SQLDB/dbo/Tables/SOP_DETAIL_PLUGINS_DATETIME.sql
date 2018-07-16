﻿CREATE TABLE [dbo].[SOP_DETAIL_PLUGINS_DATETIME] (
    [SODPD_PRIMARY]     INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SODPD_DETAIL_LINK] FLOAT (53)    NOT NULL,
    [SODPD_TAGNAME]     VARCHAR (100) NOT NULL,
    [SODPD_TAGVALUE]    DATETIME      NULL,
    CONSTRAINT [SODPD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SODPD_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SODPD_DETAIL_LINK_FK] FOREIGN KEY ([SODPD_DETAIL_LINK]) REFERENCES [dbo].[ORD_DETAIL] ([OD_PRIMARY]) ON DELETE CASCADE
);

