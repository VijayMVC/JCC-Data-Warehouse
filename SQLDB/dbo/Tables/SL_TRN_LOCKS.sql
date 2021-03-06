﻿CREATE TABLE [dbo].[SL_TRN_LOCKS] (
    [STL_ST_PRIMARY] FLOAT (53)  NOT NULL,
    [STL_USER_ID]    VARCHAR (4) NOT NULL,
    [STL_OPERATION]  VARCHAR (2) NOT NULL,
    [STL_SOURCE]     VARCHAR (1) NOT NULL,
    [STL_DATE_PUTIN] DATETIME    DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [STL_ST_PRIMARY_PK] PRIMARY KEY CLUSTERED ([STL_ST_PRIMARY] ASC) WITH (FILLFACTOR = 70),
    CONSTRAINT [STL_ST_PRIMARY_FK] FOREIGN KEY ([STL_ST_PRIMARY]) REFERENCES [dbo].[SL_TRANSACTIONS] ([ST_PRIMARY]),
    CONSTRAINT [STL_USER_ID_FK] FOREIGN KEY ([STL_USER_ID]) REFERENCES [dbo].[SYS_USER] ([USER_ID])
);


GO
CREATE NONCLUSTERED INDEX [STL_USER_ID]
    ON [dbo].[SL_TRN_LOCKS]([STL_USER_ID] ASC, [STL_SOURCE] ASC, [STL_OPERATION] ASC) WITH (FILLFACTOR = 70);

