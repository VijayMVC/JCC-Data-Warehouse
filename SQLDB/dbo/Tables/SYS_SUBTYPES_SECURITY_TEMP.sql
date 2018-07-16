﻿CREATE TABLE [dbo].[SYS_SUBTYPES_SECURITY_TEMP] (
    [SS_GUID]              UNIQUEIDENTIFIER NOT NULL,
    [SS_SEQUENCE]          BIGINT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SS_STATUS]            TINYINT          NULL,
    [SS_USER_PROFILE_LINK] INT              NULL,
    [SS_TYPE_LINK]         INT              NULL,
    [SS_DEFAULT_STRING]    VARCHAR (5)      NULL,
    CONSTRAINT [SS_SUBTYPES_SECURITY_PK] PRIMARY KEY CLUSTERED ([SS_GUID] ASC, [SS_SEQUENCE] ASC)
);

