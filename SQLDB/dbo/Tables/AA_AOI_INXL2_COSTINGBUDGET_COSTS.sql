﻿CREATE TABLE [dbo].[AA_AOI_INXL2_COSTINGBUDGET_COSTS] (
    [GUID]                     VARCHAR (36)  NOT NULL,
    [ROW_NBR_IN_GUID]          INT           NULL,
    [Dataset]                  VARCHAR (6)   NOT NULL,
    [ProjectCode]              VARCHAR (10)  NULL,
    [ProjectName]              VARCHAR (40)  NULL,
    [CostCentreCode]           VARCHAR (10)  NULL,
    [CostCentreName]           VARCHAR (40)  NULL,
    [Locked]                   TINYINT       NULL,
    [Default]                  SMALLINT      NULL,
    [Volume_Budget_Used]       TINYINT       NULL,
    [CH_SORT]                  VARCHAR (20)  NULL,
    [CH_USER1]                 VARCHAR (20)  NULL,
    [CH_USER2]                 VARCHAR (20)  NULL,
    [CH_USER3]                 VARCHAR (20)  NULL,
    [CH_USER4]                 VARCHAR (20)  NULL,
    [CH_USER5]                 VARCHAR (20)  NULL,
    [CH_USER6]                 VARCHAR (20)  NULL,
    [CC_USER_SUBTOT]           VARCHAR (20)  NULL,
    [CH_USRCHAR1]              VARCHAR (20)  NULL,
    [CH_USRCHAR2]              VARCHAR (20)  NULL,
    [CH_USRCHAR3]              VARCHAR (100) NULL,
    [CH_USRCHAR4]              VARCHAR (100) NULL,
    [CH_USRCHAR5]              VARCHAR (20)  NULL,
    [CH_USRCHAR6]              VARCHAR (30)  NULL,
    [CH_USRCHAR7]              VARCHAR (30)  NULL,
    [CH_USRCHAR8]              VARCHAR (30)  NULL,
    [CH_DATE_USER1]            DATETIME      NULL,
    [CH_DATE_USER2]            DATETIME      NULL,
    [CH_DATE_USER3]            DATETIME      NULL,
    [CH_USRNUM1]               FLOAT (53)    NULL,
    [CH_USRNUM2]               FLOAT (53)    NULL,
    [CH_USRNUM3]               FLOAT (53)    NULL,
    [CH_USRFLAG1]              TINYINT       NULL,
    [CH_USRFLAG2]              TINYINT       NULL,
    [CH_USRFLAG3]              TINYINT       NULL,
    [CH_USRDATE1]              DATETIME      NULL,
    [CH_USRDATE2]              DATETIME      NULL,
    [CH_USRDATE3]              DATETIME      NULL,
    [DATE_STARTED]             DATETIME      NULL,
    [DATE_REQUIRED]            DATETIME      NULL,
    [DATE_ESTIMATED]           DATETIME      NULL,
    [DATE_LAST_INVOICE]        DATETIME      NULL,
    [DATE_LAST_PAYMENT]        DATETIME      NULL,
    [DATE_COMPLETED]           DATETIME      NULL,
    [DATE_STATUS_CHANGED]      DATETIME      NULL,
    [Profile]                  VARCHAR (50)  NULL,
    [ProjectCC_Start_Date]     DATE          NULL,
    [ProjectCC_Start_Year]     INT           NULL,
    [ProjectCC_Start_Period]   INT           NULL,
    [ProjectCC_Nbr_Of_Periods] INT           NULL,
    [Total]                    FLOAT (53)    NULL,
    [V1]                       FLOAT (53)    NULL,
    [V2]                       FLOAT (53)    NULL,
    [V3]                       FLOAT (53)    NULL,
    [V4]                       FLOAT (53)    NULL,
    [V5]                       FLOAT (53)    NULL,
    [V6]                       FLOAT (53)    NULL,
    [V7]                       FLOAT (53)    NULL,
    [V8]                       FLOAT (53)    NULL,
    [V9]                       FLOAT (53)    NULL,
    [V10]                      FLOAT (53)    NULL,
    [V11]                      FLOAT (53)    NULL,
    [V12]                      FLOAT (53)    NULL,
    [V13]                      FLOAT (53)    NULL,
    [V14]                      FLOAT (53)    NULL,
    [V15]                      FLOAT (53)    NULL,
    [V16]                      FLOAT (53)    NULL,
    [V17]                      FLOAT (53)    NULL,
    [V18]                      FLOAT (53)    NULL,
    [V19]                      FLOAT (53)    NULL,
    [V20]                      FLOAT (53)    NULL,
    [V21]                      FLOAT (53)    NULL,
    [V22]                      FLOAT (53)    NULL,
    [V23]                      FLOAT (53)    NULL,
    [V24]                      FLOAT (53)    NULL,
    [V25]                      FLOAT (53)    NULL,
    [V26]                      FLOAT (53)    NULL,
    [V27]                      FLOAT (53)    NULL,
    [V28]                      FLOAT (53)    NULL,
    [V29]                      FLOAT (53)    NULL,
    [V30]                      FLOAT (53)    NULL,
    [V31]                      FLOAT (53)    NULL,
    [V32]                      FLOAT (53)    NULL,
    [V33]                      FLOAT (53)    NULL,
    [V34]                      FLOAT (53)    NULL,
    [V35]                      FLOAT (53)    NULL,
    [V36]                      FLOAT (53)    NULL,
    [V37]                      FLOAT (53)    NULL,
    [V38]                      FLOAT (53)    NULL,
    [V39]                      FLOAT (53)    NULL
);

