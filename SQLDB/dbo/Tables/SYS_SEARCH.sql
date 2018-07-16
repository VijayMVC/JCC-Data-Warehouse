﻿CREATE TABLE [dbo].[SYS_SEARCH] (
    [SCH_PRIMARY]     INT           IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    [SCH_DATEPUTIN]   DATETIME      NULL,
    [SCH_USERID]      VARCHAR (10)  NULL,
    [SCH_REPORT]      VARCHAR (70)  NULL,
    [SCH_NAME]        VARCHAR (70)  NULL,
    [SCH_PARSEVALUES] TEXT          NULL,
    [SCH_WHERETEXT]   TEXT          NULL,
    [SCH_OPTIONVALUE] FLOAT (53)    DEFAULT ((0)) NULL,
    [SCH_MENUOPTION]  INT           DEFAULT ((0)) NULL,
    [SCH_LIST_VALUES] VARCHAR (200) NULL,
    [SCH_SORT1]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT2]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT3]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT4]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT5]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT6]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT7]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT8]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT9]       TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT10]      TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT11]      TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT12]      TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT13]      TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT14]      TINYINT       DEFAULT ((0)) NULL,
    [SCH_SORT15]      TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT1]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT2]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT3]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT4]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT5]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT6]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT7]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT8]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT9]     TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT10]    TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT11]    TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT12]    TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT13]    TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT14]    TINYINT       DEFAULT ((0)) NULL,
    [SCH_SUBTOT15]    TINYINT       DEFAULT ((0)) NULL,
    [SCH_PRIVATE]     TINYINT       DEFAULT ((0)) NULL,
    CONSTRAINT [SCH_PRIMARY_PK] PRIMARY KEY CLUSTERED ([SCH_PRIMARY] ASC)
);
