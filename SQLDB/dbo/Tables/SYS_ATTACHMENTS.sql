﻿CREATE TABLE [dbo].[SYS_ATTACHMENTS] (
    [ATT_PRIMARY]       INT             IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [ATT_FILENAME]      NVARCHAR (256)  NULL,
    [ATT_DESCRIPTION]   NVARCHAR (1024) NULL,
    [ATT_MODULE]        INT             NULL,
    [ATT_RECORD_TYPE]   INT             NULL,
    [ATT_DOCUMENT_TYPE] INT             NULL,
    [ATT_AUDIT_NO]      INT             NULL,
    [ATT_REC_CODE]      NVARCHAR (40)   NULL,
    [ATT_DATE_PUTIN]    DATETIME        NULL,
    [ATT_USER_PUTIN]    NVARCHAR (4)    NULL,
    [ATT_DATE_EDITED]   DATETIME        NULL,
    [ATT_USER_EDITED]   NVARCHAR (4)    NULL,
    [ATT_SOURCE]        NVARCHAR (1)    NULL,
    [ATT_FILE_PRIMARY]  INT             NULL,
    CONSTRAINT [SYS_ATTACHMENTS_PK] PRIMARY KEY CLUSTERED ([ATT_PRIMARY] ASC)
);

