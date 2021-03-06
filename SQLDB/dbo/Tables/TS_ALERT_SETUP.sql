﻿CREATE TABLE [dbo].[TS_ALERT_SETUP] (
    [ALSH_PRIMARY]               FLOAT (53)       NOT NULL,
    [ALSH_RECORD_TYPE]           VARCHAR (10)     DEFAULT ('') NOT NULL,
    [ALSH_RECORD_LINK]           FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [ALSH_TYPE]                  TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_SIMPLE_TRIGGER]        TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_RECEPIENT_TYPE]        TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_RECEPIENT_EMAIL]       VARCHAR (1000)   DEFAULT ('') NOT NULL,
    [ALSH_SUBJECT]               VARCHAR (200)    DEFAULT ('') NOT NULL,
    [ALSH_MESSAGE_BODY]          VARCHAR (8000)   DEFAULT ('') NOT NULL,
    [ALSH_ACTIVE]                TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_NAME]                  VARCHAR (50)     DEFAULT ('') NOT NULL,
    [ALSH_NLEVEL_TRIGGER]        TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_NLEVEL_RECEPIENT_TYPE] TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_APAS_PRIMARY]          FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [ALSH_SENDER_EMAIL_TYPE]     TINYINT          DEFAULT ((0)) NOT NULL,
    [ALSH_SENDER_EMAIL]          VARCHAR (254)    DEFAULT ('') NOT NULL,
    [ALSH_GUID]                  UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([ALSH_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

