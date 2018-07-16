﻿CREATE TABLE [dbo].[TS_CUSTOM_FORM_SETUP_DATALINKS] (
    [CFDL_PRIMARY]               FLOAT (53)       NOT NULL,
    [CFDL_CFSH_PRIMARY]          FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [CFDL_DL_NAME]               VARCHAR (100)    DEFAULT ('') NOT NULL,
    [CFDL_VIEW_NAME]             VARCHAR (200)    DEFAULT ('') NOT NULL,
    [CFDL_LINK_DL_COLUMN_NAME]   VARCHAR (100)    DEFAULT ('') NOT NULL,
    [CFDL_LINK_TYPE]             TINYINT          DEFAULT ((0)) NOT NULL,
    [CFDL_LINK_CFSD_COLUMN_NAME] VARCHAR (50)     DEFAULT ('') NOT NULL,
    [CFDL_CUSTOM_LINK_TEXT]      VARCHAR (1000)   DEFAULT ('') NOT NULL,
    [CFDL_LINK_VALUE]            VARCHAR (20)     DEFAULT ('') NOT NULL,
    [CFDL_LINK_OPERATOR_TYPE]    TINYINT          DEFAULT ((0)) NOT NULL,
    [CFDL_LINK_CFSD_COLUMN_TEXT] VARCHAR (50)     DEFAULT ('') NOT NULL,
    [CFDL_DL_TYPE]               TINYINT          DEFAULT ((0)) NOT NULL,
    [CFDL_CFST_TAB_CODE]         VARCHAR (20)     DEFAULT ('') NOT NULL,
    [CFDL_SYSTEM]                TINYINT          DEFAULT ((0)) NOT NULL,
    [CFDL_GUID]                  UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([CFDL_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);
