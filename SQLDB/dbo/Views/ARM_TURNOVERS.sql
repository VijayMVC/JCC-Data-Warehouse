﻿CREATE VIEW ARM_TURNOVERS AS
SELECT NCODE AS NominalCode,
DET_NOM_YEAR AS NomYear,
DET_NOM_PERIOD AS NomPeriod,
ISNULL(((sum(round(home_debit,2))-sum(round(home_credit,2)))),0) AS NewTurnover
FROM AA_NOMINAL_TRAN_VIEW
WHERE DET_BATCH_FLAG<>'1'
GROUP BY NCODE, DET_NOM_YEAR, DET_NOM_PERIOD
