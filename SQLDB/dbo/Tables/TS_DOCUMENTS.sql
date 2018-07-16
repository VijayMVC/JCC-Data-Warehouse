﻿CREATE TABLE [dbo].[TS_DOCUMENTS] (
    [TSDOC_PRIMARY]        FLOAT (53)    NOT NULL,
    [TSDOC_ACCOUNT_CODE]   VARCHAR (25)  DEFAULT ('') NOT NULL,
    [TSDOC_SECONDARY_CODE] VARCHAR (25)  DEFAULT ('') NOT NULL,
    [TSDOC_RECORD_TYPE]    VARCHAR (50)  DEFAULT ('') NOT NULL,
    [TSDOC_CONTENT_TYPE]   VARCHAR (100) DEFAULT ('') NOT NULL,
    [TSDOC_NAME]           VARCHAR (256) DEFAULT ('') NOT NULL,
    [TSDOC_EXTENSION]      VARCHAR (10)  DEFAULT ('') NOT NULL,
    [TSDOC_DATA]           IMAGE         NULL,
    [TSDOC_DATE_ENTERED]   DATETIME      NULL,
    [TSDOC_USERID]         VARCHAR (4)   DEFAULT ('') NOT NULL,
    [TSDOC_DESCRIPTION]    VARCHAR (100) DEFAULT ('') NOT NULL,
    [TSDOC_SIZE]           INT           DEFAULT ((0)) NOT NULL,
    [TSDOC_PATH]           VARCHAR (256) DEFAULT ('') NOT NULL,
    [TSDOC_SORTKEY]        VARCHAR (20)  DEFAULT ('') NOT NULL,
    [TSDOC_MIGRATED]       TINYINT       DEFAULT ((0)) NOT NULL,
    [TSDOC_NOTES]          VARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([TSDOC_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

