﻿create view    AA_REP_CHEQUES_VIEW

as

select
   DLH_DOC_DATE
,  DLH_CHEQUE_WORD1
,  DLH_CHEQUE_WORD2
,  DLH_CHEQUE_WORD3
,  DLH_CHEQUE_WORD4
,  DLH_CHEQUE_WORD5
,  DLH_CHEQUE_WORD6
,  DLH_CHEQUE_WORD7
,  DLH_CHEQUE_WORD8
,  DLH_CHEQUE_VALUE
,  DLH_TEXT
,  DLH_PRIMARY
from
   DOC_LEDGER_HEADER