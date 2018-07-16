﻿CREATE TABLE [dbo].[NLB_TRANSACTIONS] (
    [NBT_PRIMARY]         INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [NBT_REVISION]        VARCHAR (10)  NULL,
    [NBT_EXCEPTION_ITEM]  TINYINT       DEFAULT ((0)) NULL,
    [NBT_TRANTYPE]        VARCHAR (1)   NULL,
    [NBT_HEADER_REF]      VARCHAR (10)  NULL,
    [NBT_DESCRIPTION]     VARCHAR (200) NULL,
    [NBT_DATE]            DATETIME      NULL,
    [NBT_POST_VALUE_HOME] FLOAT (53)    DEFAULT ((0)) NULL,
    [NBT_POST_VALUE_EURO] FLOAT (53)    DEFAULT ((0)) NULL,
    [NBT_LINE_COUNT]      INT           DEFAULT ((0)) NULL,
    [NBT_BATCH_FLAG]      TINYINT       DEFAULT ((0)) NULL,
    [NBT_BATCH_REF]       VARCHAR (10)  NULL,
    [NBT_ARCHIVE_FLAG]    TINYINT       DEFAULT ((0)) NULL,
    [NBT_CONTRA_FLAG]     TINYINT       DEFAULT ((0)) NULL,
    [NBT_GROSS_CONTRA]    VARCHAR (25)  NULL,
    [NBT_MULTI_CONTRA]    TINYINT       DEFAULT ((0)) NULL,
    [NBT_VAT_CONTRA]      VARCHAR (25)  NULL,
    [NBT_CORRECTION_REF]  VARCHAR (11)  NULL,
    [NBT_YEAR]            VARCHAR (1)   NULL,
    [NBT_USER_PUTIN]      VARCHAR (4)   NULL,
    [NBT_DATE_PUTIN]      DATETIME      NULL,
    [NBT_CON_REFTYPE]     VARCHAR (11)  NULL,
    [NBT_MU_STATUS]       VARCHAR (1)   NULL,
    [NBT_SUB_LEDGER]      VARCHAR (10)  NULL,
    CONSTRAINT [NBT_PRIMARY_PK] PRIMARY KEY CLUSTERED ([NBT_PRIMARY] ASC)
);

