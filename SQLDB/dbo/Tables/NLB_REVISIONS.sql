﻿CREATE TABLE [dbo].[NLB_REVISIONS] (
    [NBR_PRIMARY]     INT          IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [NBR_CODE]        VARCHAR (10) NULL,
    [NBR_DESCRIPTION] VARCHAR (40) NULL,
    [NBR_NOTES]       TEXT         NULL,
    [NBR_CLOSED]      TINYINT      DEFAULT ((0)) NULL,
    [NBR_USER_EDITED] VARCHAR (4)  NULL,
    [NBR_DATE_EDITED] DATETIME     NULL,
    [NBR_USER_PUTIN]  VARCHAR (4)  NULL,
    [NBR_DATE_PUTIN]  DATETIME     NULL,
    [NBR_USRCHAR1]    VARCHAR (20) NULL,
    [NBR_USRCHAR2]    VARCHAR (20) NULL,
    [NBR_USRCHAR3]    VARCHAR (20) NULL,
    [NBR_USRCHAR4]    VARCHAR (30) NULL,
    [NBR_USRCHAR5]    VARCHAR (30) NULL,
    [NBR_USRCHAR6]    VARCHAR (30) NULL,
    [NBR_USRFLAG1]    TINYINT      DEFAULT ((0)) NULL,
    [NBR_USRFLAG2]    TINYINT      DEFAULT ((0)) NULL,
    [NBR_USRFLAG3]    TINYINT      DEFAULT ((0)) NULL,
    [NBR_USRNUM1]     FLOAT (53)   DEFAULT ((0)) NULL,
    [NBR_USRNUM2]     FLOAT (53)   DEFAULT ((0)) NULL,
    [NBR_USRNUM3]     FLOAT (53)   DEFAULT ((0)) NULL,
    [NBR_USRDATE1]    DATETIME     NULL,
    [NBR_USRDATE2]    DATETIME     NULL,
    [NBR_USRDATE3]    DATETIME     NULL,
    CONSTRAINT [NBR_PRIMARY_PK] PRIMARY KEY CLUSTERED ([NBR_PRIMARY] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [NBR_CODE]
    ON [dbo].[NLB_REVISIONS]([NBR_CODE] ASC);


GO
CREATE NONCLUSTERED INDEX [NBR_DESCRIPTION]
    ON [dbo].[NLB_REVISIONS]([NBR_DESCRIPTION] ASC);
