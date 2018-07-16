﻿CREATE VIEW AA_IH_AGED_VIEW
/*
** Written:       1/1/2006 RQ
** Last Amended:  
*/
AS
--SELECT isnull(DATEDIFF(DAY,ST_DUEDATE,getDate()),0) AS DAYS,
SELECT isnull(DATEDIFF(DAY,ST_DATE,'7 APR 2005'),0) AS DAYS,
CASE ST_TRANTYPE
   WHEN 'INV' THEN ST_UNALLOCATED
   WHEN 'ADR' THEN ST_UNALLOCATED
   ELSE 0
END AS DEBITS,
CASE ST_TRANTYPE
   WHEN 'CRN' THEN ST_UNALLOCATED
   WHEN 'ACR' THEN ST_UNALLOCATED
   WHEN 'PAY' THEN ST_UNALLOCATED
   ELSE 0
END AS CREDITS,
CU_CREDIT_LIMIT AS RQCREDIT_LIMIT,
1 AS 'RUKU',
CU_ON_STOP AS RQ_ON_STOP,
CUCODE AS RQCODE,
ST_PRIMARY AS RQ_PRIMARY
from SL_TRANSACTIONS,SL_ACCOUNTS 
where ST_COPYCUST=CUCODE and ST_ALOC_POINTER<'1' and ST_BATCH_FLAG<>1 --and (ST_TRANTYPE='INV' or ST_TRANTYPE='ADR')
