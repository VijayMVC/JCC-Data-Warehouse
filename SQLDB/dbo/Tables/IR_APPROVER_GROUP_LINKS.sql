﻿CREATE TABLE [dbo].[IR_APPROVER_GROUP_LINKS] (
    [IR_AGL_PRIMARY]    INT        IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [IR_AGL_GROUP_LINK] INT        NOT NULL,
    [IR_AGL_USER_LINK]  FLOAT (53) NOT NULL,
    CONSTRAINT [IR_AGL_PRIMARY_PK] PRIMARY KEY NONCLUSTERED ([IR_AGL_PRIMARY] ASC),
    CONSTRAINT [IR_AGL_GROUP_LINKS_FK] FOREIGN KEY ([IR_AGL_GROUP_LINK]) REFERENCES [dbo].[IR_APPROVER_GROUPS] ([IR_AG_PRIMARY]) ON DELETE CASCADE,
    CONSTRAINT [IR_AGL_USER_LINK_FK] FOREIGN KEY ([IR_AGL_USER_LINK]) REFERENCES [dbo].[SYS_USER] ([USR_PRIMARY])
);


GO
CREATE UNIQUE CLUSTERED INDEX [IR_AGL_GROUP_USER]
    ON [dbo].[IR_APPROVER_GROUP_LINKS]([IR_AGL_GROUP_LINK] ASC, [IR_AGL_USER_LINK] ASC);

