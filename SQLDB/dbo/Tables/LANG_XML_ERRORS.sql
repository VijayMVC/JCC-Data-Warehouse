﻿CREATE TABLE [dbo].[LANG_XML_ERRORS] (
    [LANGCODE_XML_ERRORS]        VARCHAR (10) NOT NULL,
    [LXMLE_FAILED_TO_INITIALISE] VARCHAR (35) NULL,
    CONSTRAINT [LANGCODE_XML_ERRORS_PK] PRIMARY KEY CLUSTERED ([LANGCODE_XML_ERRORS] ASC)
);

