﻿CREATE TABLE [dbo].[SL_ACC_TEMP] (
    [SL_ACC_STATUS_TEMP]            TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_DEFAULT_STRING]         VARCHAR (100)  NULL,
    [SL_ACC_INSERT_FLAG]            TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_USER_ID]                VARCHAR (4)    NULL,
    [SL_ACC_ACCOUNT]                VARCHAR (10)   NULL,
    [SL_ACC_ACCOUNT_TYPE]           CHAR (1)       NULL,
    [SL_ACC_NAME]                   VARCHAR (40)   NULL,
    [SL_ACC_ADDRESS]                VARCHAR (160)  NULL,
    [SL_ACC_ADDRESS_USER1]          VARCHAR (30)   NULL,
    [SL_ACC_ADDRESS_USER2]          VARCHAR (30)   NULL,
    [SL_ACC_POSTCODE]               VARCHAR (12)   NULL,
    [SL_ACC_PHONE]                  VARCHAR (20)   NULL,
    [SL_ACC_FAX]                    VARCHAR (20)   NULL,
    [SL_ACC_MOBILE_NUMBER]          VARCHAR (20)   NULL,
    [SL_ACC_EMAIL]                  VARCHAR (53)   NULL,
    [SL_ACC_INTERNET_ADDRESS]       VARCHAR (100)  NULL,
    [SL_ACC_CURRENCY_CODE]          VARCHAR (4)    NULL,
    [SL_ACC_ANY_CURRENCY]           TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_EXPORT_CODE]            CHAR (1)       NULL,
    [SL_ACC_ANALYSIS]               VARCHAR (25)   NULL,
    [SL_ACC_TAX_CODE]               VARCHAR (4)    NULL,
    [SL_ACC_BANK_ANALYSIS]          VARCHAR (25)   NULL,
    [SL_ACC_VAT_REG_NO]             VARCHAR (21)   NULL,
    [SL_ACC_COUNTRY_CODE]           VARCHAR (4)    NULL,
    [SL_ACC_EC_DELIVERY]            VARCHAR (3)    NULL,
    [SL_ACC_EC_TRN_NATURE]          VARCHAR (2)    NULL,
    [SL_ACC_EC_TRN_MODE]            CHAR (1)       NULL,
    [SL_ACC_LANGUAGE_CODE]          VARCHAR (10)   NULL,
    [SL_ACC_NEXT_CONTACT]           DATETIME       NULL,
    [SL_ACC_PROFILE_LEVEL]          INT            DEFAULT ((0)) NULL,
    [SL_ACC_ON_STOP]                TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_INV_LAYOUT]             VARCHAR (15)   NULL,
    [SL_ACC_PRICE_KEY]              TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_TOT_DISC]               FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_LINE_DISC]              FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_CREDIT_LIMIT]           FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_TERMS]                  VARCHAR (40)   NULL,
    [SL_ACC_SETT_DISC1]             FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_SETT_DAYS1]             INT            DEFAULT ((0)) NULL,
    [SL_ACC_SETT_DISC2]             FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_SETT_DAYS2]             INT            DEFAULT ((0)) NULL,
    [SL_ACC_DEL_CHARGE]             FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_DEL_CHARGE_PCNT]        FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_MIN_ORDER]              FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_A_P_DAYS]               INT            DEFAULT ((0)) NULL,
    [SL_ACC_DUE_DATE_TYPE]          TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_DUE_DAYS]               INT            DEFAULT ((0)) NULL,
    [SL_ACC_SORT]                   VARCHAR (20)   NULL,
    [SL_ACC_USER1]                  VARCHAR (20)   NULL,
    [SL_ACC_USER2]                  VARCHAR (20)   NULL,
    [SL_ACC_USER3]                  VARCHAR (20)   NULL,
    [SL_ACC_NOTES]                  VARCHAR (6000) NULL,
    [SL_ACC_CONTACT_COMP_TYPE]      TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_CONTACT]                VARCHAR (30)   NULL,
    [SL_ACC_CONTACT_TITLE]          VARCHAR (5)    NULL,
    [SL_ACC_CONTACT_INITIALS]       VARCHAR (15)   NULL,
    [SL_ACC_CONTACT_SURNAME]        VARCHAR (30)   NULL,
    [SL_ACC_CONTACT_FIRSTNAME]      VARCHAR (20)   NULL,
    [SL_ACC_SALUTE]                 VARCHAR (20)   NULL,
    [SL_ACC_CONTACT_JOB]            VARCHAR (35)   NULL,
    [SL_ACC_BANK_SORT_CODE]         VARCHAR (8)    NULL,
    [SL_ACC_BANK_ACCOUNT_NO]        VARCHAR (15)   NULL,
    [SL_ACC_BANK_ACCOUNT_NAME]      VARCHAR (25)   NULL,
    [SL_ACC_BACS_REFERENCE]         VARCHAR (18)   NULL,
    [SL_ACC_BANK_BANKNAME]          VARCHAR (25)   NULL,
    [SL_ACC_WEB_PASSWORD]           VARCHAR (10)   NULL,
    [SL_ACC_ISDN_NO]                VARCHAR (20)   NULL,
    [SL_ACC_ANA_EAN_LOCATION_CODE]  VARCHAR (13)   NULL,
    [SL_ACC_DELIVERY_LOCATION_CODE] VARCHAR (13)   NULL,
    [SL_ACC_USER_CHAR1]             VARCHAR (20)   NULL,
    [SL_ACC_USER_CHAR2]             VARCHAR (20)   NULL,
    [SL_ACC_USER_CHAR3]             VARCHAR (20)   NULL,
    [SL_ACC_USER_CHAR4]             VARCHAR (30)   NULL,
    [SL_ACC_USER_CHAR5]             VARCHAR (30)   NULL,
    [SL_ACC_USER_CHAR6]             VARCHAR (30)   NULL,
    [SL_ACC_USER_DATE1]             DATETIME       NULL,
    [SL_ACC_USER_DATE2]             DATETIME       NULL,
    [SL_ACC_USER_DATE3]             DATETIME       NULL,
    [SL_ACC_USER_FLAG1]             TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_USER_FLAG2]             TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_USER_FLAG3]             TINYINT        DEFAULT ((0)) NULL,
    [SL_ACC_USER_NUMBER1]           FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_USER_NUMBER2]           FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_USER_NUMBER3]           FLOAT (53)     DEFAULT ((0)) NULL,
    [SL_ACC_PHONE_LINK]             VARCHAR (20)   NULL,
    [SL_ACC_PRIMARY]                INT            NULL,
    [SL_ACC_SOURCE]                 VARCHAR (1)    DEFAULT ('') NULL,
    [SL_ACC_IDENTITY]               INT            IDENTITY (1, 1) NOT FOR REPLICATION NOT NULL,
    CONSTRAINT [SL_ACC_IDENTITY_PK] PRIMARY KEY CLUSTERED ([SL_ACC_IDENTITY] ASC)
);


GO
CREATE TRIGGER [dbo].[AA_PROCESS_SL_ACC_TEMP_T]
    ON [dbo].[SL_ACC_TEMP]
    WITH ENCRYPTION
    AFTER UPDATE
    AS 
BEGIN
--The script body was encrypted and cannot be reproduced here.
    RETURN
END

