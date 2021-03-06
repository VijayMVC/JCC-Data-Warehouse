﻿CREATE TABLE [dbo].[ACP_EXPENSES_CC_SCHEME] (
    [ACP_SCHEME_PRIMARY]   INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [ACP_SCHEME_NAME]      VARCHAR (500) NULL,
    [ACP_SCHEME_ID]        VARCHAR (100) NULL,
    [ACP_SCHEME_SUPP_LINK] FLOAT (53)    NULL,
    CONSTRAINT [ACP_SCHEME_PRIMARY_PK] PRIMARY KEY CLUSTERED ([ACP_SCHEME_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);


GO
CREATE NONCLUSTERED INDEX [ACP_SCHEME_SUPP_LINK]
    ON [dbo].[ACP_EXPENSES_CC_SCHEME]([ACP_SCHEME_SUPP_LINK] ASC) WITH (FILLFACTOR = 70);

