﻿CREATE TABLE [dbo].[SDK_WMS_PRM_CONTAINER_DETAILS] (
    [WMPCD_MANIFEST_LINK]              INT           NOT NULL,
    [WMPCD_TRANSPORT_METHOD]           VARCHAR (25)  NULL,
    [WMPCD_SHIPPING_LINE]              VARCHAR (25)  NULL,
    [WMPCD_PROGRESS_STATUS]            VARCHAR (25)  NULL,
    [WMPCD_EXTRA_DAYS_FOR_LOADING]     INT           DEFAULT ((0)) NOT NULL,
    [WMPCD_ACTUAL_LOAD_DATE]           DATETIME      NULL,
    [WMPCD_BILL_OF_LADING_DATE]        DATETIME      NULL,
    [WMPCD_EXPECTED_DOCKING_DATE]      DATETIME      NULL,
    [WMPCD_ACTUAL_DOCKING_DATE]        DATETIME      NULL,
    [WMPCD_ACTUAL_DELIVERY_DATE]       DATETIME      NULL,
    [WMPCD_BOOKING_SLOT]               DATETIME      NULL,
    [WMPCD_BOOKING_SLOT_LOCATION]      VARCHAR (10)  NULL,
    [WMPCD_CONTAINER_NUMBER]           VARCHAR (50)  NULL,
    [WMPCD_AGENT_CARRIER]              VARCHAR (50)  NULL,
    [WMPCD_NOTES_AGAINST_THE_DELIVERY] VARCHAR (MAX) NULL,
    [WMPCD_CONTAINER_SIZE]             VARCHAR (25)  NULL,
    [WMPCD_PORT_OF_ORIGIN]             VARCHAR (25)  NULL,
    [WMPCD_DESTINATION_PORT]           VARCHAR (25)  NULL,
    [WMPCD_DELIVERY_POINT_ADDRESS]     VARCHAR (300) NULL,
    [WMPCD_DELIVERY_POINT_POSTCODE]    VARCHAR (12)  NULL,
    [WMPCD_CUSTOMER_LINK]              FLOAT (53)    NULL,
    CONSTRAINT [SDK_WMS_PRM_CONTAINER_DETAILS_PK] PRIMARY KEY CLUSTERED ([WMPCD_MANIFEST_LINK] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [WMPCD_CUSTOMER_LINK_FK] FOREIGN KEY ([WMPCD_CUSTOMER_LINK]) REFERENCES [dbo].[SL_ACCOUNTS] ([CU_PRIMARY]) ON DELETE SET NULL
);


GO
CREATE NONCLUSTERED INDEX [WMPCD_CUSTOMER_LINK]
    ON [dbo].[SDK_WMS_PRM_CONTAINER_DETAILS]([WMPCD_CUSTOMER_LINK] ASC) WITH (FILLFACTOR = 70);

