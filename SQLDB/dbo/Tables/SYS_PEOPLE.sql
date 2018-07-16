﻿CREATE TABLE [dbo].[SYS_PEOPLE] (
    [PP_PRIMARY]        INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [PP_CODE]           VARCHAR (10)  NULL,
    [PP_KNOWN_AS]       VARCHAR (30)  NULL,
    [PP_TITLE]          VARCHAR (5)   NULL,
    [PP_INITIALS]       VARCHAR (5)   NULL,
    [PP_FIRST_NAME]     VARCHAR (20)  NULL,
    [PP_SURNAME]        VARCHAR (20)  NULL,
    [PP_SALUTE]         VARCHAR (20)  NULL,
    [PP_JOB_TITLE]      VARCHAR (35)  NULL,
    [PP_DEPARTMENT]     VARCHAR (20)  NULL,
    [PP_EMAIL]          VARCHAR (64)  NULL,
    [PP_MOBILE]         VARCHAR (20)  NULL,
    [PP_EXTENSION]      VARCHAR (20)  NULL,
    [PP_USER_ID]        VARCHAR (4)   NULL,
    [PP_RESP_TO_LINK]   INT           NULL,
    [PP_DATE_PUTIN]     DATETIME      NULL,
    [PP_USER_PUTIN]     VARCHAR (4)   NULL,
    [PP_DATE_EDITED]    DATETIME      NULL,
    [PP_USER_EDITED]    VARCHAR (4)   NULL,
    [PP_USRCHAR1]       VARCHAR (20)  NULL,
    [PP_USRCHAR2]       VARCHAR (20)  NULL,
    [PP_USRCHAR3]       VARCHAR (100) NULL,
    [PP_USRCHAR4]       VARCHAR (100) NULL,
    [PP_USRCHAR5]       VARCHAR (20)  NULL,
    [PP_USRCHAR6]       VARCHAR (30)  NULL,
    [PP_USRCHAR7]       VARCHAR (30)  NULL,
    [PP_USRCHAR8]       VARCHAR (30)  NULL,
    [PP_USRNUM1]        FLOAT (53)    NULL,
    [PP_USRNUM2]        FLOAT (53)    NULL,
    [PP_USRNUM3]        FLOAT (53)    NULL,
    [PP_USRFLAG1]       TINYINT       NULL,
    [PP_USRFLAG2]       TINYINT       NULL,
    [PP_USRFLAG3]       TINYINT       NULL,
    [PP_USRDATE1]       DATETIME      NULL,
    [PP_USRDATE2]       DATETIME      NULL,
    [PP_USRDATE3]       DATETIME      NULL,
    [PP_PROJECT_LEADER] BIT           NULL,
    [PP_NOTES]          TEXT          NULL,
    [PP_DO_NOT_USE]     BIT           DEFAULT ((0)) NULL,
    CONSTRAINT [PP_PRIMARY_PK] PRIMARY KEY CLUSTERED ([PP_PRIMARY] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [PP_CODE]
    ON [dbo].[SYS_PEOPLE]([PP_CODE] ASC);
