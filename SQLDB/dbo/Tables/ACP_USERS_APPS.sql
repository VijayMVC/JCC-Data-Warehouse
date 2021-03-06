﻿CREATE TABLE [dbo].[ACP_USERS_APPS] (
    [ACP_UAPP_PRIMARY]  INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [ACP_UAPP_APP_CODE] VARCHAR (20)  NULL,
    [ACP_UAPP_USER_ID]  VARCHAR (100) NULL,
    CONSTRAINT [ACP_UAPP_PRIMARY_PK] PRIMARY KEY CLUSTERED ([ACP_UAPP_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

