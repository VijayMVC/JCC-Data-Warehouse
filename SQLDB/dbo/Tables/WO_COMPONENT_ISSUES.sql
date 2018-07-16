﻿CREATE TABLE [dbo].[WO_COMPONENT_ISSUES] (
    [WI_PRIMARY]              INT         IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [WI_COMPONENT_LINK]       INT         NOT NULL,
    [WI_QUANTITY_ISSUED]      FLOAT (53)  NOT NULL,
    [WI_ACTUAL_PRICE]         FLOAT (53)  DEFAULT ((0)) NOT NULL,
    [WI_DATE]                 DATETIME    NULL,
    [WI_ANALYSIS_LINK]        FLOAT (53)  NULL,
    [WI_COSTHEADER_LINK]      FLOAT (53)  NULL,
    [WI_COSTCENTRE_LINK]      FLOAT (53)  NULL,
    [WI_USER]                 VARCHAR (4) NULL,
    [WI_REVERSE_LINK]         INT         NULL,
    [WI_QUANTITY_WRITTEN_OFF] FLOAT (53)  DEFAULT ((0)) NOT NULL,
    [WI_SOURCE]               VARCHAR (1) NULL,
    CONSTRAINT [WI_PRIMARY_PK] PRIMARY KEY CLUSTERED ([WI_PRIMARY] ASC),
    CONSTRAINT [WO_COMPONENT_ISSUES_ANALYSIS_LINK_FK] FOREIGN KEY ([WI_ANALYSIS_LINK]) REFERENCES [dbo].[PL_ANALYSIS] ([PA_PRIMARY]),
    CONSTRAINT [WO_COMPONENT_ISSUES_COMPONENT_LINK_FK] FOREIGN KEY ([WI_COMPONENT_LINK]) REFERENCES [dbo].[WO_COMPONENTS] ([WC_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [WO_COMPONENT_ISSUES_COSTCENTRE_LINK_FK] FOREIGN KEY ([WI_COSTCENTRE_LINK]) REFERENCES [dbo].[CST_COSTCENTRE] ([CC_PRIMARY]),
    CONSTRAINT [WO_COMPONENT_ISSUES_COSTHEADER_LINK_FK] FOREIGN KEY ([WI_COSTHEADER_LINK]) REFERENCES [dbo].[CST_COSTHEADER] ([CH_PRIMARY])
);


GO
CREATE NONCLUSTERED INDEX [WI_COMPONENT_LINK]
    ON [dbo].[WO_COMPONENT_ISSUES]([WI_COMPONENT_LINK] ASC);

