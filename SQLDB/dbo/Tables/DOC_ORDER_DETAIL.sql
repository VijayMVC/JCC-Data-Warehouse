﻿CREATE TABLE [dbo].[DOC_ORDER_DETAIL] (
    [DOD_HEADER_LINK]          INT           DEFAULT ((0)) NULL,
    [DOD_ORDER_LINK]           FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_PRIMARY]              INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [DOD_USER_ID]              VARCHAR (4)   NULL,
    [DOD_QUANTITY]             FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_QUANTITY_OS]          FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_NET_BASE1]            FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_NET_BASE2]            FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_NET_FOREIGN]          FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_NET_DOC]              FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_VAT_BASE1]            FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_VAT_BASE2]            FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_VAT_FOREIGN]          FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_VAT_DOC]              FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_LINEDISC_BASE1]       FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_LINEDISC_BASE2]       FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_LINEDISC_FOREIGN]     FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_LINEDISC_DOC]         FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_TOTDISC_BASE1]        FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_TOTDISC_BASE2]        FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_TOTDISC_FOREIGN]      FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_TOTDISC_DOC]          FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_BIN_NUMBER]           VARCHAR (15)  NULL,
    [DOD_SUB_GROUP]            VARCHAR (90)  NULL,
    [DOD_UNITCST_BASE1]        FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_UNITCST_BASE2]        FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_UNITCST_FOREIGN]      FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_UNITCST_DOC]          FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_SERIAL_NO]            TEXT          NULL,
    [DOD_SUBANALYSIS]          VARCHAR (25)  NULL,
    [DOD_REVERSE_VAT_BASE1]    FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_REVERSE_VAT_BASE2]    FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_REVERSE_VAT_FOREIGN]  FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_REVERSE_VAT_DOC]      FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_QUANTITY_ORDERED]     FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_STOCK_LINK]           INT           DEFAULT ((0)) NULL,
    [DOD_MOVEMENT_DIRECTION]   VARCHAR (3)   NULL,
    [DOD_QTY_UNIT]             FLOAT (53)    DEFAULT ((0)) NULL,
    [DOD_UNIT_DESCRIPTION]     VARCHAR (20)  NULL,
    [DOD_MOVEMENT_DETAIL_TEXT] VARCHAR (240) NULL,
    [DOD_EC_TYPE]              VARCHAR (1)   NULL,
    CONSTRAINT [DOD_PRIMARY_PK] PRIMARY KEY CLUSTERED ([DOD_PRIMARY] ASC)
);


GO
CREATE NONCLUSTERED INDEX [DOD_HEADER_LINK]
    ON [dbo].[DOC_ORDER_DETAIL]([DOD_HEADER_LINK] ASC);

