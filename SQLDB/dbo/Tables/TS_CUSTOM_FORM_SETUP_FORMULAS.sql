﻿CREATE TABLE [dbo].[TS_CUSTOM_FORM_SETUP_FORMULAS] (
    [CFDF_PRIMARY]         FLOAT (53)       NOT NULL,
    [CFDF_CFSH_PRIMARY]    FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [CFDF_CFST_PRIMARY]    FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [CFDF_CFSD_PRIMARY]    FLOAT (53)       DEFAULT ((0)) NOT NULL,
    [CFDF_DESCRIPTION]     VARCHAR (1000)   DEFAULT ('') NOT NULL,
    [CFDF_FORMULA]         VARCHAR (2000)   DEFAULT ('') NOT NULL,
    [CFDF_FORMULA_ROW_KEY] VARCHAR (50)     DEFAULT ('') NOT NULL,
    [CFDF_ORDER]           INT              DEFAULT ((0)) NOT NULL,
    [CFDF_GUID]            UNIQUEIDENTIFIER NULL,
    PRIMARY KEY CLUSTERED ([CFDF_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);
