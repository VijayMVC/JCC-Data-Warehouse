﻿CREATE TABLE [dbo].[SOP_DETAIL_PLUGINS_VCHAR] (
    [SODPV_PRIMARY]     INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SODPV_DETAIL_LINK] FLOAT (53)     NOT NULL,
    [SODPV_TAGNAME]     VARCHAR (100)  NOT NULL,
    [SODPV_TAGVALUE]    VARCHAR (1000) NULL,
    CONSTRAINT [SODPV_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SODPV_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [SODPV_DETAIL_LINK_FK] FOREIGN KEY ([SODPV_DETAIL_LINK]) REFERENCES [dbo].[ORD_DETAIL] ([OD_PRIMARY]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [SODPV_DETAIL_LINK]
    ON [dbo].[SOP_DETAIL_PLUGINS_VCHAR]([SODPV_DETAIL_LINK] ASC, [SODPV_TAGNAME] ASC) WITH (FILLFACTOR = 70);
