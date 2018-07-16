﻿CREATE TABLE [dbo].[TS_CUSTOM_BUTTONS] (
    [CBUT_PRIMARY]                FLOAT (53)    NOT NULL,
    [CBUT_RECORD_TYPE]            VARCHAR (10)  DEFAULT ('') NOT NULL,
    [CBUT_RECORD_LINK]            FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [CBUT_ORDER]                  INT           DEFAULT ((0)) NOT NULL,
    [CBUT_LABEL]                  VARCHAR (30)  DEFAULT ('') NOT NULL,
    [CBUT_TYPE]                   INT           DEFAULT ((0)) NOT NULL,
    [CBUT_COMMAND]                VARCHAR (MAX) DEFAULT ('') NOT NULL,
    [CBUT_ENABLE_TYPE]            TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_ENABLE_TYPE_STAGE]      VARCHAR (50)  DEFAULT ('') NOT NULL,
    [CBUT_ENABLE]                 TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_VISIBLE]                TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_VISIBLE_TYPE]           TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_VISIBLE_TYPE_STAGE]     VARCHAR (50)  DEFAULT ('') NOT NULL,
    [CBUT_SAVE_FORM_FIRST]        TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_TOOLTIP]                VARCHAR (240) DEFAULT ('') NOT NULL,
    [CBUT_LINKED_CFSH_PRIMARY]    FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [CBUT_CLOSE_AFTER_CLICK]      TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_VISIBLE_CONFIG_PROC]    VARCHAR (50)  DEFAULT ('') NOT NULL,
    [CBUT_ENABLE_CONFIG_PROC]     VARCHAR (50)  DEFAULT ('') NOT NULL,
    [CBUT_CFSD_PRIMARY]           FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [CBUT_TAB_POSITION]           TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_ICON_NAME]              VARCHAR (255) DEFAULT ('') NOT NULL,
    [CBUT_SHOW_ON]                TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_EXISTING_RECORD]        TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_LINKED_FIELD]           VARCHAR (50)  DEFAULT ('') NOT NULL,
    [CBUT_URL_WINDOW_TYPE]        TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_URL_WINDOW_HEIGHT]      FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [CBUT_URL_WINDOW_WIDTH]       FLOAT (53)    DEFAULT ((0)) NOT NULL,
    [CBUT_REFRESH_AFTER_CLICK]    TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_DO_NOT_CREATE_LINK]     TINYINT       DEFAULT ((0)) NOT NULL,
    [CBUT_CHECK_RECORD_SELECTION] TINYINT       DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([CBUT_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

