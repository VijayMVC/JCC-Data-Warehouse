﻿CREATE TABLE [dbo].[STK_PRICE_MATRIX_SUB_ANA] (
    [PLSA_PRIMARY] FLOAT (53)   NOT NULL,
    [PLSA_PARENT]  FLOAT (53)   NULL,
    [PLSA_TYPE]    TINYINT      NULL,
    [PLSA_CODE]    VARCHAR (25) NULL,
    CONSTRAINT [PLSA_PRIMARY_PK] PRIMARY KEY CLUSTERED ([PLSA_PRIMARY] ASC) WITH (FILLFACTOR = 70)
);


GO
CREATE NONCLUSTERED INDEX [PLSA_CODE]
    ON [dbo].[STK_PRICE_MATRIX_SUB_ANA]([PLSA_CODE] ASC) WITH (FILLFACTOR = 70);


GO
CREATE NONCLUSTERED INDEX [PLSA_PARENT]
    ON [dbo].[STK_PRICE_MATRIX_SUB_ANA]([PLSA_PARENT] ASC) WITH (FILLFACTOR = 70);
