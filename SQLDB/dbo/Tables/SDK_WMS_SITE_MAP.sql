﻿CREATE TABLE [dbo].[SDK_WMS_SITE_MAP] (
    [WMSM_PRIMARY]      INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [WMSM_COAD_PRIMARY] INT          NULL,
    [WMSM_SITECODE]     VARCHAR (10) NULL,
    [WMSM_SET]          TINYINT      NULL,
    CONSTRAINT [PK_SDK_WMS_SITE_MAP] PRIMARY KEY CLUSTERED ([WMSM_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);

