﻿CREATE TABLE [dbo].[STK_MOVEMENTS2] (
    [SM_PRIMARY_2] FLOAT (53)    NOT NULL,
    [SM_CHAR1]     VARCHAR (20)  NULL,
    [SM_CHAR2]     VARCHAR (20)  NULL,
    [SM_CHAR3]     VARCHAR (100) NULL,
    [SM_CHAR4]     VARCHAR (100) NULL,
    [SM_FLAG1]     TINYINT       DEFAULT ((0)) NULL,
    [SM_FLAG2]     TINYINT       DEFAULT ((0)) NULL,
    [SM_DATE1]     DATETIME      NULL,
    [SM_DATE2]     DATETIME      NULL,
    [SM_NUM1]      FLOAT (53)    DEFAULT ((0)) NULL,
    [SM_NUM2]      FLOAT (53)    DEFAULT ((0)) NULL,
    [SM_USRCHAR1]  VARCHAR (20)  NULL,
    [SM_USRCHAR2]  VARCHAR (20)  NULL,
    [SM_USRCHAR3]  VARCHAR (100) NULL,
    [SM_USRCHAR4]  VARCHAR (100) NULL,
    [SM_USRFLAG1]  TINYINT       DEFAULT ((0)) NULL,
    [SM_USRFLAG2]  TINYINT       DEFAULT ((0)) NULL,
    [SM_USRDATE1]  DATETIME      NULL,
    [SM_USRDATE2]  DATETIME      NULL,
    [SM_USRNUM1]   FLOAT (53)    DEFAULT ((0)) NULL,
    [SM_USRNUM2]   FLOAT (53)    DEFAULT ((0)) NULL,
    CONSTRAINT [SM_PRIMARY_2_PK] PRIMARY KEY CLUSTERED ([SM_PRIMARY_2] ASC)
);

