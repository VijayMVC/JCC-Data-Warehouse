﻿CREATE TABLE [dbo].[ACP_STATEMENT_UPLOAD_LOG] (
    [ACP_SUL_PRIMARY]       INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [ACP_SUL_ITEMID]        VARCHAR (100)  NULL,
    [ACP_SUL_USERID]        VARCHAR (4)    NULL,
    [ACP_SUL_UPLOAD_DATE]   DATETIME       NULL,
    [ACP_SUL_SUCCESSFUL]    BIT            NULL,
    [ACP_SUL_ERROR_MESSAGE] VARCHAR (8000) NULL,
    CONSTRAINT [ACP_SUL_PRIMARY_PK] PRIMARY KEY CLUSTERED ([ACP_SUL_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

