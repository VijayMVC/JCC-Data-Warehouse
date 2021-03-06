﻿CREATE TABLE [dbo].[LANG_EMAIL_ERRORS] (
    [LANGCODE_EMAIL_ERRORS]            VARCHAR (10)  NOT NULL,
    [LEE_ACCESS_DENIED]                VARCHAR (15)  NULL,
    [LEE_AMBIGUOUS_RECIPIENT]          VARCHAR (30)  NULL,
    [LEE_ATTCHMNT_NOT_FOUND]           VARCHAR (25)  NULL,
    [LEE_ATTCHMNT_OPEN_FAILED]         VARCHAR (30)  NULL,
    [LEE_ATTCHMNT_WRITE_FAILED]        VARCHAR (30)  NULL,
    [LEE_BAD_PARAMS]                   VARCHAR (20)  NULL,
    [LEE_BAD_RECIPIENT_TYPE]           VARCHAR (25)  NULL,
    [LEE_DISK_FULL]                    VARCHAR (15)  NULL,
    [LEE_EXTERNAL_LIST_EMPTY]          VARCHAR (75)  NULL,
    [LEE_FIELD_NOT_FOUND]              VARCHAR (20)  NULL,
    [LEE_FUNCTION_NOT_SUPPORTED]       VARCHAR (25)  NULL,
    [LEE_GENERAL_FAILURE]              VARCHAR (90)  NULL,
    [LEE_INSUFFICIENT_MEMORY]          VARCHAR (25)  NULL,
    [LEE_INSUFFICIENT_MEMORY_EXT]      VARCHAR (25)  NULL,
    [LEE_INVALID_EDIT_FIELD_PARAM]     VARCHAR (35)  NULL,
    [LEE_INVALID_MESSAGE]              VARCHAR (20)  NULL,
    [LEE_INVALID_MESSAGE_HANDLE]       VARCHAR (25)  NULL,
    [LEE_INVALID_RECIPIENTS]           VARCHAR (25)  NULL,
    [LEE_INVALID_SESSION]              VARCHAR (20)  NULL,
    [LEE_LOGIN_FAILURE]                VARCHAR (20)  NULL,
    [LEE_MESSAGE_IN_USE]               VARCHAR (20)  NULL,
    [LEE_NETWORK_FAILURE]              VARCHAR (20)  NULL,
    [LEE_NO_MESSAGES]                  VARCHAR (20)  NULL,
    [LEE_NO_RECIPIENTS]                VARCHAR (45)  NULL,
    [LEE_NOT_LOGGED_ON]                VARCHAR (25)  NULL,
    [LEE_PDF_DRIVER_NOT_FOUND]         VARCHAR (100) NULL,
    [LEE_PDF_FAILED_TO_INITIALISE]     VARCHAR (45)  NULL,
    [LEE_SAVE_EXTERNAL_FAILED]         VARCHAR (30)  NULL,
    [LEE_TEXT_TOO_LARGE]               VARCHAR (20)  NULL,
    [LEE_TOO_MANY_FILES]               VARCHAR (20)  NULL,
    [LEE_TOO_MANY_RECIPIENTS]          VARCHAR (25)  NULL,
    [LEE_TOO_MANY_SESSIONS]            VARCHAR (25)  NULL,
    [LEE_TYPE_NOT_SUPPORTED]           VARCHAR (25)  NULL,
    [LEE_UNDEFINED_CODE_7]             VARCHAR (35)  NULL,
    [LEE_UNKNOWN_RECIPIENT]            VARCHAR (25)  NULL,
    [LEE_USER_CANCELLED_OPERATION]     VARCHAR (30)  NULL,
    [LEE_EMAIL_DISABLED]               VARCHAR (30)  NULL,
    [LEE_EMAIL_FAILED_TO_SEND]         VARCHAR (30)  NULL,
    [LEE_FAILED_TO_FIND_ACCESS_MAIL]   VARCHAR (45)  NULL,
    [LEE_FAILED_TO_FIND_CONFIG]        VARCHAR (55)  NULL,
    [LEE_FAILED_TO_LAUNCH_ACCESS_MAIL] VARCHAR (45)  NULL,
    [LEE_FAILED_TO_LOAD_CONFIG]        VARCHAR (55)  NULL,
    [LEE_FAILED_TO_LOAD_BODY]          VARCHAR (70)  NULL,
    [LEE_FAILED_TO_FIND_BODY]          VARCHAR (70)  NULL,
    [LEE_FAILED_TO_DELETE_CONFIG]      VARCHAR (55)  NULL,
    [LEE_FAILED_TO_DELETE_BODY]        VARCHAR (70)  NULL,
    [LEE_CONFIG_XML_MALFORMED]         VARCHAR (85)  NULL,
    [LEE_UNEXPECTED_PARAMETERS]        VARCHAR (35)  NULL,
    [LEE_CALLING_PROCESS_ID_REQUIRED]  VARCHAR (30)  NULL,
    [LEE_FAILED_TO_GENERATE_EMAIL]     VARCHAR (40)  NULL,
    [LEE_FAILED_TO_DELETE_EMAIL_FILE]  VARCHAR (45)  NULL,
    [LEE_SETTINGS_NOT_CONFIGURED]      VARCHAR (150) NULL,
    [LEE_HOST_ADDRESS_MISSING]         VARCHAR (55)  NULL,
    [LEE_INVALID_PORT_NUMBER]          VARCHAR (55)  NULL,
    [LEE_USERNAME_MISSING]             VARCHAR (75)  NULL,
    [LEE_INVALID_TIMEOUT_PERIOD]       VARCHAR (70)  NULL,
    CONSTRAINT [LANGCODE_EMAIL_ERRORS_PK] PRIMARY KEY CLUSTERED ([LANGCODE_EMAIL_ERRORS] ASC) WITH (FILLFACTOR = 70)
);

