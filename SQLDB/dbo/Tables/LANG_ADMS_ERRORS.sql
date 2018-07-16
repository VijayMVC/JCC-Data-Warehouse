﻿CREATE TABLE [dbo].[LANG_ADMS_ERRORS] (
    [LANGCODE_ADMS_ERRORS]                VARCHAR (10) NOT NULL,
    [LAE_DIRECTORY_NOT_FOUND]             VARCHAR (45) NULL,
    [LAE_UNABLE_TO_CREATE_COMMAND_FILE]   VARCHAR (40) NULL,
    [LAE_RETRIEVE_USER_ERROR]             VARCHAR (45) NULL,
    [LAE_EXTERNAL_DOC_NOT_FOUND]          VARCHAR (45) NULL,
    [LAE_USER_CREATION_ERROR]             VARCHAR (45) NULL,
    [LAE_STOCK_PICTURE_NOT_FOUND]         VARCHAR (45) NULL,
    [LAE_DOCUMENT_UPDATE_FAILED]          VARCHAR (45) NULL,
    [LAE_OPEN_COMMAND_FILE_FAILED]        VARCHAR (40) NULL,
    [LAE_UPDATE_COMMAND_FILE_FAILED]      VARCHAR (40) NULL,
    [LAE_CLOSE_COMMAND_FILE_FAILED]       VARCHAR (40) NULL,
    [LAE_READ_STATUS_FILE_FAILED]         VARCHAR (35) NULL,
    [LAE_UNABLE_TO_LAUNCH_APPLICATION]    VARCHAR (38) NULL,
    [LAE_STATUS_FILE_MISSING]             VARCHAR (35) NULL,
    [LAE_WEB_SERVICE_INVALID]             VARCHAR (35) NULL,
    [LAE_USER_LOGON_FAILED]               VARCHAR (35) NULL,
    [LAE_UNABLE_TO_CREATE_STATUS_FILE]    VARCHAR (40) NULL,
    [LAE_UNABLE_TO_COMMUNICATE_WITH_ADMS] VARCHAR (50) NULL,
    [LAE_UNABLE_TO_SAVE_DOCUMENT]         VARCHAR (40) NULL,
    [LAE_WEB_ADDRESS_NO_RESPONSE]         VARCHAR (40) NULL,
    CONSTRAINT [LANGCODE_ADMS_ERRORS_PK] PRIMARY KEY CLUSTERED ([LANGCODE_ADMS_ERRORS] ASC) WITH (FILLFACTOR = 70)
);
