﻿CREATE TABLE [dbo].[SDK_WMS_PACKAGE_LINK] (
    [WMSPB_PRIMARY]   INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [WMSPB_PACK_ID]   INT          NULL,
    [WMSPB_PRICECODE] VARCHAR (20) NULL,
    CONSTRAINT [PK_SDK_WMS_PACKAGE_LINK] PRIMARY KEY CLUSTERED ([WMSPB_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);
