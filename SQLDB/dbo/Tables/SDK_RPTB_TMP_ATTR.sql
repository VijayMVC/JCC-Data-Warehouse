﻿CREATE TABLE [dbo].[SDK_RPTB_TMP_ATTR] (
    [RBTMP_ID]          INT         IDENTITY (1, 1) NOT NULL,
    [RBTMP_USERID]      VARCHAR (5) NULL,
    [RBTMP_RBD_PRIMARY] INT         NULL,
    [RBTMP_PRIMARY]     INT         NULL
);


GO
CREATE NONCLUSTERED INDEX [IX_SDK_RPTB_TMP_ATTR]
    ON [dbo].[SDK_RPTB_TMP_ATTR]([RBTMP_USERID] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [IX_SDK_RPTB_TMP_ATTR_1]
    ON [dbo].[SDK_RPTB_TMP_ATTR]([RBTMP_RBD_PRIMARY] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [IX_SDK_RPTB_TMP_ATTR_2]
    ON [dbo].[SDK_RPTB_TMP_ATTR]([RBTMP_PRIMARY] ASC) WITH (FILLFACTOR = 70);
